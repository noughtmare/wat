(module
  (func $print (import "prelude" "print") (param i32))
  (func $add (param $x i32) (param $y i32) (result i32)
    (i32.add (local.get $x) (local.get $y))
  )
  (func (export "main")
    (call $print (call $add (i32.const 5) (i32.const 6)))
  )
)
