import assert from 'node:assert/strict';
import { writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

const project = resolve(process.argv[2]);
const output = resolve(process.argv[3] ?? project);
const load = (name) => import(pathToFileURL(resolve(project, 'js-out', name)).href);
const c = await load('calcit.core.mjs');
const { comp_container } = await load('app.comp.container.mjs');
const { StorePayload } = await load('app.client.mjs');
const { make_string } = await load('respo.render.html.mjs');
for (const [state, message] of [['initial', 'Loading...'], ['offline', 'Socket broken! Click to retry.']]) {
  const tag = c.init_tags([state])[state];
  const html = make_string(comp_container(c.parse_cirru_edn('{}'), c._PCT__$o__$o_(StorePayload, tag)));
  assert.ok(html.includes(message));
  assert.ok(html.includes('data-comp="comp-offline"'));
  writeFileSync(resolve(output, `respo-${state}.html`), html);
  console.log(`diary-${state}-component-ssr-ok`, html.length);
}
const wire = c.parse_cirru_edn(`{}
  :logged-in? false
  :reel-length 0
  :count 1
  :color |#123456
  :user nil
  :diary nil
  :router $ {} (:name :home) (:data nil)
  :today $ {} (:year 2026) (:month 9) (:day 29)
  :session $ {} (:id 9) (:nickname |) (:user-id nil)
    :messages $ {}
    :router $ {} (:name :home) (:data nil)
    :cursor $ {} (:year 2026) (:month 9) (:day 29)`);
const login = make_string(comp_container(c.parse_cirru_edn('{} (:cursor ([]))'),
  c._PCT__$o__$o_(StorePayload, c.init_tags(['online']).online, wire)));
for (const text of ['Very tiny app for adding diaries.', 'Username', 'Password', 'Sign up', 'Log in']) {
  assert.ok(login.includes(text), `login must contain ${text}`);
}
assert.ok(login.includes('data-comp="comp-login"'));
writeFileSync(resolve(output, 'respo-login.html'), login);
console.log('diary-login-component-ssr-ok', login.length);
