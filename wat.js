const fs = require('node:fs')

const importObject = {
  prelude: {
    print(arg) {
      console.log(arg);
    },
  },
};

WebAssembly.instantiate(fs.readFileSync("program.wasm"),importObject).then(
  (obj) => {
    obj.instance.exports.main();
  },
);
