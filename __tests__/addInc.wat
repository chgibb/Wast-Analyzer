;;Modified from WebAssembly Studio's empty WAT project template
(module
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    get_local $lhs
    get_local $rhs
    i32.add)
  (func $inc (param $lhs i32) (result i32)
    get_local $lhs
    i32.const 1
    i32.add)
  (export "add" (func $add))
)
