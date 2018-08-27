;;Modified from WebAssembly Studio's empty WAT project template
(module
  (func $addTowNumbersTogetherReallyLongFuncName (param $lhs i32) (param $rhs i32) (result i32)
    get_local $lhs
    get_local $rhs
    i32.add)
  (func $sub (param $lhs i32) (param $rhs i32) (result i32)
    get_local $lhs
    get_local $rhs
    i32.sub)
  (export "add" (func $add))
)
