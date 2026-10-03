export async function resolve(specifier, context, nextResolve) {
  if (specifier.endsWith('/calcit.build-errors')) {
    return nextResolve(`${specifier}.mjs`, context);
  }
  if (specifier === 'virtual-dom/create-element' || specifier === 'virtual-dom/h') {
    return nextResolve(`${specifier}.js`, context);
  }
  return nextResolve(specifier, context);
}
