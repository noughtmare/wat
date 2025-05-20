set -e
wasm-as --enable-exception-handling --enable-gc --enable-reference-types program.wat
node --experimental-wasm-exnref wat.js