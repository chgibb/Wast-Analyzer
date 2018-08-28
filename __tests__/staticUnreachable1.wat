(module
  (type $t0 (func))
  (type $t1 (func (param f64 f64) (result f64)))
  (type $t2 (func (param f64) (result f64)))
  (type $t3 (func (param f64)))
  (import "env" "sayHello" (func $main/sayHello (type $t0)))
  (import "console" "logf" (func $main/console.logf (type $t3)))
  (func $~lib/math/NativeMath.sin (type $t2) (param $p0 f64) (result f64)
    unreachable
    f64.const 0x0p+0 (;=0;))
  (func $~lib/math/NativeMath.cos (type $t2) (param $p0 f64) (result f64)
    unreachable
    f64.const 0x0p+0 (;=0;))
  (func $main/addSinCos (export "addSinCos") (type $t1) (param $p0 f64) (param $p1 f64) (result f64)
    get_local $p0
    call $~lib/math/NativeMath.sin
    get_local $p1
    call $~lib/math/NativeMath.cos
    f64.add)
  (func $start (type $t0)
    call $main/sayHello
    f64.const 0x1p+0 (;=1;)
    f64.const 0x1p+1 (;=2;)
    call $main/addSinCos
    call $main/console.logf)
  (memory $memory (export "memory") 0)
  (global $g0 i32 (i32.const 8))
  (start 5))
