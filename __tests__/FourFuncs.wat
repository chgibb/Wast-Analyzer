(module
  (type $t0 (func))
  (import "main" "imported1" (func $main/imported1 (type $t0)))
  (func $main/notExported1 (type $t0)
    (local $l0 i32)
    i32.const 0
    set_local $l0)
  (func $main/notExported2 (type $t0)
    (local $l0 i32)
    i32.const 1
    set_local $l0
    call $main/imported1)
  (func $main/exported1 (export "exported1") (type $t0)
    (local $l0 i32)
    i32.const 2
    set_local $l0)
  (memory $memory (export "memory") 0)
  (global $g0 i32 (i32.const 8)))
