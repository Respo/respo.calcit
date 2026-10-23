import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',stdio:['ignore','pipe','pipe'],maxBuffer:16*1024*1024});
const json=(...args)=>JSON.parse(run(...args,'--format','json'));
const q=id=>json('query','def',id).data;
assert.equal(run('-v').trim(),'0.30.1');
const rules={'option:unwrap':['.unwrap',1],'option:unwrap-or':['.unwrap-or',2],'option:map':['.map',2],'option:fold':['.fold',3],'option:none?':['.none?',1]};
const methods=json('query','type','calcit.core/Option').data.methods;
for(const [old,[method]] of Object.entries(rules))assert.equal(methods.find(m=>m.name===method)?.definition,`calcit.core/${old}`);
writeFileSync('acceptance/core-methods.json',JSON.stringify(methods.filter(m=>Object.values(rules).some(([n])=>n===m.name)),null,2));
const namespaces=json('query','ns').data.namespaces;
const before=[];
for(const ns of namespaces){
  const listing=run('query','defs',ns),ids=listing.split('\n').filter(l=>l.startsWith('  ')).map(l=>l.trim().split(' ')[0]);
  assert.equal(ids.length,Number(listing.match(/Definitions: (\d+)/)[1]));
  const imports=json('query','ns',ns).data.ns_code;
  assert.ok(!JSON.stringify(imports).match(/option:(unwrap|unwrap-or|map|fold|none\?)/),'Do not rewrite a shadowing import');
  for(const name of ids)before.push(q(`${ns}/${name}`));
}
assert.equal(before.length,404);
assert.equal(before.reduce((n,v)=>n+v.tests.length,0),147);
assert.equal(before.reduce((n,v)=>n+v.examples.length,0),74);
const counts={code:0,tests:0,examples:0},operations=[],expected=new Map();
function rewrite(node,region){
  if(!Array.isArray(node))return node;
  if([';','quote','quasiquote'].includes(node[0]))return node;
  if(Object.hasOwn(rules,node[0])){
    const [method,arity]=rules[node[0]];
    assert.equal(node.length,arity+1);
    counts[region]++;
    const args=node.slice(1).map(n=>rewrite(n,region));
    return [args[0],method,...args.slice(1)];
  }
  return node.map(n=>rewrite(n,region));
}
for(const v of before){
  const next=structuredClone(v);
  next.code=rewrite(v.code,'code');
  for(const [i,t]of v.tests.entries())next.tests[i].code=rewrite(t.code,'tests');
  for(const e of v.examples)assert.deepEqual(rewrite(e,'examples'),e,'Examples require separate review');
  if(JSON.stringify(next.code)!==JSON.stringify(v.code))operations.push(['edit','def',v.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(next.code)]);
  for(const [i,t]of v.tests.entries())if(JSON.stringify(next.tests[i].code)!==JSON.stringify(t.code)){
    const args=['edit','add-test',v.id,t.name,'--overwrite','--input-format','json-ast','--code',JSON.stringify(next.tests[i].code)];
    if(t.tags.length)args.push('--tags',t.tags.join(','));
    operations.push(args);
  }
  if(JSON.stringify(next)!==JSON.stringify(v))expected.set(v.id,next);
}
assert.deepEqual(counts,{code:39,tests:18,examples:0});
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));
assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
for(const [id,v]of expected)assert.deepEqual(q(id),v,`${id}: preserve every field except reviewed alias expressions`);
const remaining=json('query','search','^option:|^result:','--source','project','--regex').data.summary;
assert.equal(remaining.matches,0);
const diff=json('analyze','program-diff','HEAD');
for(const change of diff.data.evidence.changes){
  assert.ok(expected.has(change.definition));
  assert.ok(/\/(code|tests)$/.test(change.path));
}
writeFileSync('acceptance/program-diff.json',JSON.stringify(diff,null,2));
writeFileSync('acceptance/summary.json',JSON.stringify({namespaces:namespaces.length,definitions:before.length,counts,changedDefinitions:expected.size,operations:operations.length,remaining},null,2));
console.log(JSON.stringify({counts,changedDefinitions:expected.size,operations:operations.length,remaining}));
