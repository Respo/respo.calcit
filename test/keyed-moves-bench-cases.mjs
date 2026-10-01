export const sampleCount = 11;
export const median = values => [...values].sort((a, b) => a - b)[Math.floor(values.length / 2)];
/** Build the same keyed reorder workloads for Node and browser measurements. */
export function cases() {
  return [100, 1000].flatMap(size => {
    const keys = Array.from({ length: size }, (_, i) => i);
    return [
      ['rotate', [size - 1, ...keys.slice(0, -1)]],
      ['reverse', [...keys].reverse()],
      ['swap', [1, 0, ...keys.slice(2)]],
      ['unchanged', keys],
    ].map(([name, next]) => ({ size, name, keys, next }));
  });
}
/** Rotate workloads each round; callers alternate revision order within pairs. */
export function orderedCases(round) {
  const items = cases();
  const offset = round % items.length;
  return [...items.slice(offset), ...items.slice(0, offset)];
}
