const fs = require('node:fs')

WebAssembly.instantiate(fs.readFileSync("program.wasm"), {console}).then(
  (obj) => {
    obj.instance.exports.main();
  },
);
