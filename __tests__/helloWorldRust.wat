;;Generated from WebAssembly Studio's Rust Hello World project template
(module
  (type $t0 (func))
  (type $t1 (func (param i32)))
  (type $t2 (func (param i32 i32)))
  (type $t3 (func (param i32 i32) (result i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (param i32 i32 i32) (result i32)))
  (type $t6 (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type $t7 (func (param i32 i32 i32)))
  (import "./rustc_h_bvnunfhtlkt" "__wbg_f_alert_alert_n" (func $__wbg_f_alert_alert_n (type $t2)))
  (import "./rustc_h_bvnunfhtlkt" "__wbindgen_throw" (func $__wbindgen_throw (type $t2)))
  (func $greet (export "greet") (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l0 i32)
    get_global $g0
    i32.const 64
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $l0
    get_local $p1
    i32.store offset=12
    get_local $l0
    get_local $p0
    i32.store offset=8
    get_local $l0
    i32.const 1
    i32.store offset=20
    get_local $l0
    get_local $l0
    i32.const 8
    i32.add
    i32.store offset=16
    block $B0
      block $B1
        i32.const 16
        call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
        tee_local $p0
        i32.eqz
        br_if $B1
        get_local $l0
        get_local $p0
        i32.store offset=24
        get_local $l0
        i64.const 16
        i64.store offset=28 align=4
        get_local $l0
        get_local $l0
        i32.const 24
        i32.add
        i32.store offset=36
        get_local $l0
        i32.const 52
        i32.add
        i32.const 1
        i32.store
        get_local $l0
        i32.const 60
        i32.add
        i32.const 1
        i32.store
        get_local $l0
        i32.const 2
        i32.store offset=44
        get_local $l0
        i32.const 1664
        i32.store offset=40
        get_local $l0
        i32.const 1064
        i32.store offset=48
        get_local $l0
        get_local $l0
        i32.const 16
        i32.add
        i32.store offset=56
        get_local $l0
        i32.const 36
        i32.add
        i32.const 1680
        get_local $l0
        i32.const 40
        i32.add
        call $core::fmt::write::h533d40856339be39
        br_if $B0
        get_local $l0
        i32.load offset=28
        set_local $p0
        get_local $l0
        i32.load offset=24
        tee_local $p1
        get_local $l0
        i32.load offset=32
        call $__wbg_f_alert_alert_n
        block $B2
          get_local $p0
          i32.eqz
          br_if $B2
          get_local $p1
          call $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8
        end
        get_local $l0
        i32.const 64
        i32.add
        set_global $g0
        return
      end
      i32.const 16
      i32.const 1
      call $rust_oom
      unreachable
    end
    call $core::result::unwrap_failed::ha655e72972fab217
    unreachable)
  (func $<&'a_T_as_core::fmt::Display>::fmt::h10d15eeb4044458d (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    get_local $p0
    i32.load
    get_local $p0
    i32.load offset=4
    get_local $p1
    call $<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8)
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c (type $t4) (param $p0 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              block $B13
                                block $B14
                                  block $B15
                                    block $B16
                                      block $B17
                                        block $B18
                                          block $B19
                                            block $B20
                                              block $B21
                                                block $B22
                                                  block $B23
                                                    block $B24
                                                      block $B25
                                                        block $B26
                                                          block $B27
                                                            block $B28
                                                              block $B29
                                                                block $B30
                                                                  block $B31
                                                                    block $B32
                                                                      block $B33
                                                                        block $B34
                                                                          block $B35
                                                                            block $B36
                                                                              get_local $p0
                                                                              i32.const 244
                                                                              i32.gt_u
                                                                              br_if $B36
                                                                              i32.const 0
                                                                              i32.load offset=1948
                                                                              tee_local $l0
                                                                              i32.const 16
                                                                              get_local $p0
                                                                              i32.const 11
                                                                              i32.add
                                                                              i32.const -8
                                                                              i32.and
                                                                              get_local $p0
                                                                              i32.const 11
                                                                              i32.lt_u
                                                                              select
                                                                              tee_local $l1
                                                                              i32.const 3
                                                                              i32.shr_u
                                                                              tee_local $l2
                                                                              i32.const 31
                                                                              i32.and
                                                                              tee_local $l3
                                                                              i32.shr_u
                                                                              tee_local $p0
                                                                              i32.const 3
                                                                              i32.and
                                                                              i32.eqz
                                                                              br_if $B35
                                                                              get_local $p0
                                                                              i32.const -1
                                                                              i32.xor
                                                                              i32.const 1
                                                                              i32.and
                                                                              get_local $l2
                                                                              i32.add
                                                                              tee_local $l1
                                                                              i32.const 3
                                                                              i32.shl
                                                                              tee_local $l3
                                                                              i32.const 1964
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local $p0
                                                                              i32.const 8
                                                                              i32.add
                                                                              set_local $l4
                                                                              get_local $p0
                                                                              i32.load offset=8
                                                                              tee_local $l2
                                                                              get_local $l3
                                                                              i32.const 1956
                                                                              i32.add
                                                                              tee_local $l3
                                                                              i32.eq
                                                                              br_if $B34
                                                                              get_local $l2
                                                                              get_local $l3
                                                                              i32.store offset=12
                                                                              get_local $l3
                                                                              i32.const 8
                                                                              i32.add
                                                                              get_local $l2
                                                                              i32.store
                                                                              br $B33
                                                                            end
                                                                            i32.const 0
                                                                            set_local $l2
                                                                            get_local $p0
                                                                            i32.const -64
                                                                            i32.ge_u
                                                                            br_if $B7
                                                                            get_local $p0
                                                                            i32.const 11
                                                                            i32.add
                                                                            tee_local $p0
                                                                            i32.const -8
                                                                            i32.and
                                                                            set_local $l1
                                                                            i32.const 0
                                                                            i32.load offset=1952
                                                                            tee_local $l5
                                                                            i32.eqz
                                                                            br_if $B26
                                                                            i32.const 0
                                                                            set_local $l6
                                                                            block $B37
                                                                              get_local $p0
                                                                              i32.const 8
                                                                              i32.shr_u
                                                                              tee_local $p0
                                                                              i32.eqz
                                                                              br_if $B37
                                                                              i32.const 31
                                                                              set_local $l6
                                                                              get_local $l1
                                                                              i32.const 16777215
                                                                              i32.gt_u
                                                                              br_if $B37
                                                                              get_local $l1
                                                                              i32.const 38
                                                                              get_local $p0
                                                                              i32.clz
                                                                              tee_local $p0
                                                                              i32.sub
                                                                              i32.const 31
                                                                              i32.and
                                                                              i32.shr_u
                                                                              i32.const 1
                                                                              i32.and
                                                                              i32.const 31
                                                                              get_local $p0
                                                                              i32.sub
                                                                              i32.const 1
                                                                              i32.shl
                                                                              i32.or
                                                                              set_local $l6
                                                                            end
                                                                            i32.const 0
                                                                            get_local $l1
                                                                            i32.sub
                                                                            set_local $l2
                                                                            get_local $l6
                                                                            i32.const 2
                                                                            i32.shl
                                                                            i32.const 2220
                                                                            i32.add
                                                                            i32.load
                                                                            tee_local $p0
                                                                            i32.eqz
                                                                            br_if $B29
                                                                            i32.const 0
                                                                            set_local $l3
                                                                            get_local $l1
                                                                            i32.const 0
                                                                            i32.const 25
                                                                            get_local $l6
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.sub
                                                                            i32.const 31
                                                                            i32.and
                                                                            get_local $l6
                                                                            i32.const 31
                                                                            i32.eq
                                                                            select
                                                                            i32.shl
                                                                            set_local $l0
                                                                            i32.const 0
                                                                            set_local $l4
                                                                            loop $L38
                                                                              block $B39
                                                                                get_local $p0
                                                                                i32.load offset=4
                                                                                i32.const -8
                                                                                i32.and
                                                                                tee_local $l7
                                                                                get_local $l1
                                                                                i32.lt_u
                                                                                br_if $B39
                                                                                get_local $l7
                                                                                get_local $l1
                                                                                i32.sub
                                                                                tee_local $l7
                                                                                get_local $l2
                                                                                i32.ge_u
                                                                                br_if $B39
                                                                                get_local $l7
                                                                                set_local $l2
                                                                                get_local $p0
                                                                                set_local $l4
                                                                                get_local $l7
                                                                                i32.eqz
                                                                                br_if $B31
                                                                              end
                                                                              get_local $p0
                                                                              i32.const 20
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local $l7
                                                                              get_local $l3
                                                                              get_local $l7
                                                                              get_local $p0
                                                                              get_local $l0
                                                                              i32.const 29
                                                                              i32.shr_u
                                                                              i32.const 4
                                                                              i32.and
                                                                              i32.add
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local $p0
                                                                              i32.ne
                                                                              select
                                                                              get_local $l3
                                                                              get_local $l7
                                                                              select
                                                                              set_local $l3
                                                                              get_local $l0
                                                                              i32.const 1
                                                                              i32.shl
                                                                              set_local $l0
                                                                              get_local $p0
                                                                              br_if $L38
                                                                            end
                                                                            get_local $l3
                                                                            i32.eqz
                                                                            br_if $B30
                                                                            get_local $l3
                                                                            set_local $p0
                                                                            br $B28
                                                                          end
                                                                          get_local $l1
                                                                          i32.const 0
                                                                          i32.load offset=2348
                                                                          i32.le_u
                                                                          br_if $B26
                                                                          get_local $p0
                                                                          i32.eqz
                                                                          br_if $B32
                                                                          get_local $p0
                                                                          get_local $l3
                                                                          i32.shl
                                                                          i32.const 2
                                                                          get_local $l3
                                                                          i32.shl
                                                                          tee_local $p0
                                                                          i32.const 0
                                                                          get_local $p0
                                                                          i32.sub
                                                                          i32.or
                                                                          i32.and
                                                                          tee_local $p0
                                                                          i32.const 0
                                                                          get_local $p0
                                                                          i32.sub
                                                                          i32.and
                                                                          i32.ctz
                                                                          tee_local $l2
                                                                          i32.const 3
                                                                          i32.shl
                                                                          tee_local $l4
                                                                          i32.const 1964
                                                                          i32.add
                                                                          i32.load
                                                                          tee_local $p0
                                                                          i32.load offset=8
                                                                          tee_local $l3
                                                                          get_local $l4
                                                                          i32.const 1956
                                                                          i32.add
                                                                          tee_local $l4
                                                                          i32.eq
                                                                          br_if $B24
                                                                          get_local $l3
                                                                          get_local $l4
                                                                          i32.store offset=12
                                                                          get_local $l4
                                                                          i32.const 8
                                                                          i32.add
                                                                          get_local $l3
                                                                          i32.store
                                                                          br $B23
                                                                        end
                                                                        i32.const 0
                                                                        get_local $l0
                                                                        i32.const -2
                                                                        get_local $l1
                                                                        i32.rotl
                                                                        i32.and
                                                                        i32.store offset=1948
                                                                      end
                                                                      get_local $p0
                                                                      get_local $l1
                                                                      i32.const 3
                                                                      i32.shl
                                                                      tee_local $l1
                                                                      i32.const 3
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      get_local $p0
                                                                      get_local $l1
                                                                      i32.add
                                                                      tee_local $p0
                                                                      get_local $p0
                                                                      i32.load offset=4
                                                                      i32.const 1
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      get_local $l4
                                                                      return
                                                                    end
                                                                    i32.const 0
                                                                    i32.load offset=1952
                                                                    tee_local $p0
                                                                    i32.eqz
                                                                    br_if $B26
                                                                    get_local $p0
                                                                    i32.const 0
                                                                    get_local $p0
                                                                    i32.sub
                                                                    i32.and
                                                                    i32.ctz
                                                                    i32.const 2
                                                                    i32.shl
                                                                    i32.const 2220
                                                                    i32.add
                                                                    i32.load
                                                                    tee_local $l0
                                                                    i32.load offset=4
                                                                    i32.const -8
                                                                    i32.and
                                                                    get_local $l1
                                                                    i32.sub
                                                                    set_local $l2
                                                                    get_local $l0
                                                                    set_local $l3
                                                                    get_local $l0
                                                                    i32.load offset=16
                                                                    tee_local $p0
                                                                    i32.eqz
                                                                    br_if $B11
                                                                    i32.const 0
                                                                    set_local $l8
                                                                    br $B10
                                                                  end
                                                                  i32.const 0
                                                                  set_local $l2
                                                                  get_local $p0
                                                                  set_local $l4
                                                                  br $B28
                                                                end
                                                                get_local $l4
                                                                br_if $B27
                                                              end
                                                              i32.const 0
                                                              set_local $l4
                                                              i32.const 2
                                                              get_local $l6
                                                              i32.const 31
                                                              i32.and
                                                              i32.shl
                                                              tee_local $p0
                                                              i32.const 0
                                                              get_local $p0
                                                              i32.sub
                                                              i32.or
                                                              get_local $l5
                                                              i32.and
                                                              tee_local $p0
                                                              i32.eqz
                                                              br_if $B26
                                                              get_local $p0
                                                              i32.const 0
                                                              get_local $p0
                                                              i32.sub
                                                              i32.and
                                                              i32.ctz
                                                              i32.const 2
                                                              i32.shl
                                                              i32.const 2220
                                                              i32.add
                                                              i32.load
                                                              tee_local $p0
                                                              i32.eqz
                                                              br_if $B26
                                                            end
                                                            loop $L40
                                                              get_local $p0
                                                              i32.load offset=4
                                                              i32.const -8
                                                              i32.and
                                                              tee_local $l3
                                                              get_local $l1
                                                              i32.ge_u
                                                              get_local $l3
                                                              get_local $l1
                                                              i32.sub
                                                              tee_local $l7
                                                              get_local $l2
                                                              i32.lt_u
                                                              i32.and
                                                              set_local $l0
                                                              block $B41
                                                                get_local $p0
                                                                i32.load offset=16
                                                                tee_local $l3
                                                                br_if $B41
                                                                get_local $p0
                                                                i32.const 20
                                                                i32.add
                                                                i32.load
                                                                set_local $l3
                                                              end
                                                              get_local $p0
                                                              get_local $l4
                                                              get_local $l0
                                                              select
                                                              set_local $l4
                                                              get_local $l7
                                                              get_local $l2
                                                              get_local $l0
                                                              select
                                                              set_local $l2
                                                              get_local $l3
                                                              set_local $p0
                                                              get_local $l3
                                                              br_if $L40
                                                            end
                                                            get_local $l4
                                                            i32.eqz
                                                            br_if $B26
                                                          end
                                                          i32.const 0
                                                          i32.load offset=2348
                                                          tee_local $p0
                                                          get_local $l1
                                                          i32.lt_u
                                                          br_if $B25
                                                          get_local $l2
                                                          get_local $p0
                                                          get_local $l1
                                                          i32.sub
                                                          i32.lt_u
                                                          br_if $B25
                                                        end
                                                        block $B42
                                                          block $B43
                                                            block $B44
                                                              block $B45
                                                                i32.const 0
                                                                i32.load offset=2348
                                                                tee_local $l2
                                                                get_local $l1
                                                                i32.ge_u
                                                                br_if $B45
                                                                i32.const 0
                                                                i32.load offset=2352
                                                                tee_local $p0
                                                                get_local $l1
                                                                i32.le_u
                                                                br_if $B44
                                                                i32.const 0
                                                                get_local $p0
                                                                get_local $l1
                                                                i32.sub
                                                                tee_local $l2
                                                                i32.store offset=2352
                                                                i32.const 0
                                                                i32.const 0
                                                                i32.load offset=2360
                                                                tee_local $p0
                                                                get_local $l1
                                                                i32.add
                                                                tee_local $l3
                                                                i32.store offset=2360
                                                                get_local $l3
                                                                get_local $l2
                                                                i32.const 1
                                                                i32.or
                                                                i32.store offset=4
                                                                get_local $p0
                                                                get_local $l1
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                get_local $p0
                                                                i32.const 8
                                                                i32.add
                                                                return
                                                              end
                                                              i32.const 0
                                                              i32.load offset=2356
                                                              set_local $p0
                                                              get_local $l2
                                                              get_local $l1
                                                              i32.sub
                                                              tee_local $l3
                                                              i32.const 16
                                                              i32.ge_u
                                                              br_if $B43
                                                              i32.const 0
                                                              i32.const 0
                                                              i32.store offset=2356
                                                              i32.const 0
                                                              i32.const 0
                                                              i32.store offset=2348
                                                              get_local $p0
                                                              get_local $l2
                                                              i32.const 3
                                                              i32.or
                                                              i32.store offset=4
                                                              get_local $p0
                                                              get_local $l2
                                                              i32.add
                                                              tee_local $l2
                                                              i32.const 4
                                                              i32.add
                                                              set_local $l1
                                                              get_local $l2
                                                              i32.load offset=4
                                                              i32.const 1
                                                              i32.or
                                                              set_local $l2
                                                              br $B42
                                                            end
                                                            i32.const 0
                                                            set_local $l2
                                                            get_local $l1
                                                            i32.const 65583
                                                            i32.add
                                                            tee_local $l3
                                                            i32.const 16
                                                            i32.shr_u
                                                            grow_memory
                                                            tee_local $p0
                                                            i32.const -1
                                                            i32.eq
                                                            br_if $B7
                                                            get_local $p0
                                                            i32.const 16
                                                            i32.shl
                                                            tee_local $l0
                                                            i32.eqz
                                                            br_if $B7
                                                            i32.const 0
                                                            i32.const 0
                                                            i32.load offset=2364
                                                            get_local $l3
                                                            i32.const -65536
                                                            i32.and
                                                            tee_local $l7
                                                            i32.add
                                                            tee_local $p0
                                                            i32.store offset=2364
                                                            i32.const 0
                                                            i32.const 0
                                                            i32.load offset=2368
                                                            tee_local $l2
                                                            get_local $p0
                                                            get_local $p0
                                                            get_local $l2
                                                            i32.lt_u
                                                            select
                                                            i32.store offset=2368
                                                            i32.const 0
                                                            i32.load offset=2360
                                                            tee_local $l2
                                                            i32.eqz
                                                            br_if $B18
                                                            i32.const 2372
                                                            set_local $p0
                                                            loop $L46
                                                              get_local $p0
                                                              i32.load
                                                              tee_local $l3
                                                              get_local $p0
                                                              i32.load offset=4
                                                              tee_local $l4
                                                              i32.add
                                                              get_local $l0
                                                              i32.eq
                                                              br_if $B17
                                                              get_local $p0
                                                              i32.load offset=8
                                                              tee_local $p0
                                                              br_if $L46
                                                              br $B9
                                                            end
                                                          end
                                                          i32.const 0
                                                          get_local $l3
                                                          i32.store offset=2348
                                                          i32.const 0
                                                          get_local $p0
                                                          get_local $l1
                                                          i32.add
                                                          tee_local $l0
                                                          i32.store offset=2356
                                                          get_local $l0
                                                          get_local $l3
                                                          i32.const 1
                                                          i32.or
                                                          i32.store offset=4
                                                          get_local $p0
                                                          get_local $l2
                                                          i32.add
                                                          get_local $l3
                                                          i32.store
                                                          get_local $l1
                                                          i32.const 3
                                                          i32.or
                                                          set_local $l2
                                                          get_local $p0
                                                          i32.const 4
                                                          i32.add
                                                          set_local $l1
                                                        end
                                                        get_local $l1
                                                        get_local $l2
                                                        i32.store
                                                        get_local $p0
                                                        i32.const 8
                                                        i32.add
                                                        return
                                                      end
                                                      get_local $l4
                                                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                                                      get_local $l2
                                                      i32.const 15
                                                      i32.gt_u
                                                      br_if $B22
                                                      get_local $l4
                                                      get_local $l2
                                                      get_local $l1
                                                      i32.add
                                                      tee_local $p0
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      get_local $l4
                                                      get_local $p0
                                                      i32.add
                                                      tee_local $p0
                                                      get_local $p0
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br $B12
                                                    end
                                                    i32.const 0
                                                    get_local $l0
                                                    i32.const -2
                                                    get_local $l2
                                                    i32.rotl
                                                    i32.and
                                                    i32.store offset=1948
                                                  end
                                                  get_local $p0
                                                  i32.const 8
                                                  i32.add
                                                  set_local $l3
                                                  get_local $p0
                                                  get_local $l1
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  get_local $p0
                                                  get_local $l1
                                                  i32.add
                                                  tee_local $l0
                                                  get_local $l2
                                                  i32.const 3
                                                  i32.shl
                                                  tee_local $l2
                                                  get_local $l1
                                                  i32.sub
                                                  tee_local $l1
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  get_local $p0
                                                  get_local $l2
                                                  i32.add
                                                  get_local $l1
                                                  i32.store
                                                  i32.const 0
                                                  i32.load offset=2348
                                                  tee_local $p0
                                                  i32.eqz
                                                  br_if $B19
                                                  get_local $p0
                                                  i32.const 3
                                                  i32.shr_u
                                                  tee_local $l4
                                                  i32.const 3
                                                  i32.shl
                                                  i32.const 1956
                                                  i32.add
                                                  set_local $l2
                                                  i32.const 0
                                                  i32.load offset=2356
                                                  set_local $p0
                                                  i32.const 0
                                                  i32.load offset=1948
                                                  tee_local $l7
                                                  i32.const 1
                                                  get_local $l4
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  tee_local $l4
                                                  i32.and
                                                  i32.eqz
                                                  br_if $B21
                                                  get_local $l2
                                                  i32.load offset=8
                                                  set_local $l4
                                                  br $B20
                                                end
                                                get_local $l4
                                                get_local $l1
                                                i32.const 3
                                                i32.or
                                                i32.store offset=4
                                                get_local $l4
                                                get_local $l1
                                                i32.add
                                                tee_local $p0
                                                get_local $l2
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                get_local $p0
                                                get_local $l2
                                                i32.add
                                                get_local $l2
                                                i32.store
                                                get_local $l2
                                                i32.const 255
                                                i32.gt_u
                                                br_if $B16
                                                get_local $l2
                                                i32.const 3
                                                i32.shr_u
                                                tee_local $l2
                                                i32.const 3
                                                i32.shl
                                                i32.const 1956
                                                i32.add
                                                set_local $l1
                                                i32.const 0
                                                i32.load offset=1948
                                                tee_local $l3
                                                i32.const 1
                                                get_local $l2
                                                i32.const 31
                                                i32.and
                                                i32.shl
                                                tee_local $l2
                                                i32.and
                                                i32.eqz
                                                br_if $B14
                                                get_local $l1
                                                i32.const 8
                                                i32.add
                                                set_local $l3
                                                get_local $l1
                                                i32.load offset=8
                                                set_local $l2
                                                br $B13
                                              end
                                              i32.const 0
                                              get_local $l7
                                              get_local $l4
                                              i32.or
                                              i32.store offset=1948
                                              get_local $l2
                                              set_local $l4
                                            end
                                            get_local $l2
                                            i32.const 8
                                            i32.add
                                            get_local $p0
                                            i32.store
                                            get_local $l4
                                            get_local $p0
                                            i32.store offset=12
                                            get_local $p0
                                            get_local $l2
                                            i32.store offset=12
                                            get_local $p0
                                            get_local $l4
                                            i32.store offset=8
                                          end
                                          i32.const 0
                                          get_local $l0
                                          i32.store offset=2356
                                          i32.const 0
                                          get_local $l1
                                          i32.store offset=2348
                                          get_local $l3
                                          return
                                        end
                                        block $B47
                                          block $B48
                                            i32.const 0
                                            i32.load offset=2392
                                            tee_local $p0
                                            i32.eqz
                                            br_if $B48
                                            get_local $p0
                                            get_local $l0
                                            i32.le_u
                                            br_if $B47
                                          end
                                          i32.const 0
                                          get_local $l0
                                          i32.store offset=2392
                                        end
                                        i32.const 0
                                        set_local $p0
                                        i32.const 0
                                        get_local $l7
                                        i32.store offset=2376
                                        i32.const 0
                                        get_local $l0
                                        i32.store offset=2372
                                        i32.const 0
                                        i32.const 4095
                                        i32.store offset=2396
                                        i32.const 0
                                        i32.const 0
                                        i32.store offset=2384
                                        loop $L49
                                          get_local $p0
                                          i32.const 1964
                                          i32.add
                                          get_local $p0
                                          i32.const 1956
                                          i32.add
                                          tee_local $l2
                                          i32.store
                                          get_local $p0
                                          i32.const 1968
                                          i32.add
                                          get_local $l2
                                          i32.store
                                          get_local $p0
                                          i32.const 8
                                          i32.add
                                          tee_local $p0
                                          i32.const 256
                                          i32.ne
                                          br_if $L49
                                        end
                                        get_local $l0
                                        get_local $l7
                                        i32.const -40
                                        i32.add
                                        tee_local $p0
                                        i32.const 1
                                        i32.or
                                        i32.store offset=4
                                        i32.const 0
                                        get_local $l0
                                        i32.store offset=2360
                                        i32.const 0
                                        i32.const 2097152
                                        i32.store offset=2388
                                        i32.const 0
                                        get_local $p0
                                        i32.store offset=2352
                                        get_local $l0
                                        get_local $p0
                                        i32.add
                                        i32.const 40
                                        i32.store offset=4
                                        br $B8
                                      end
                                      get_local $p0
                                      i32.load offset=12
                                      i32.eqz
                                      br_if $B15
                                      br $B9
                                    end
                                    get_local $p0
                                    get_local $l2
                                    call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
                                    br $B12
                                  end
                                  get_local $l0
                                  get_local $l2
                                  i32.le_u
                                  br_if $B9
                                  get_local $l3
                                  get_local $l2
                                  i32.gt_u
                                  br_if $B9
                                  get_local $p0
                                  i32.const 4
                                  i32.add
                                  get_local $l4
                                  get_local $l7
                                  i32.add
                                  i32.store
                                  i32.const 0
                                  i32.load offset=2360
                                  tee_local $p0
                                  i32.const 15
                                  i32.add
                                  i32.const -8
                                  i32.and
                                  tee_local $l2
                                  i32.const -8
                                  i32.add
                                  tee_local $l3
                                  i32.const 0
                                  i32.load offset=2352
                                  get_local $l7
                                  i32.add
                                  tee_local $l0
                                  get_local $l2
                                  get_local $p0
                                  i32.const 8
                                  i32.add
                                  i32.sub
                                  i32.sub
                                  tee_local $l2
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  i32.const 0
                                  i32.const 2097152
                                  i32.store offset=2388
                                  i32.const 0
                                  get_local $l3
                                  i32.store offset=2360
                                  i32.const 0
                                  get_local $l2
                                  i32.store offset=2352
                                  get_local $p0
                                  get_local $l0
                                  i32.add
                                  i32.const 40
                                  i32.store offset=4
                                  br $B8
                                end
                                i32.const 0
                                get_local $l3
                                get_local $l2
                                i32.or
                                i32.store offset=1948
                                get_local $l1
                                i32.const 8
                                i32.add
                                set_local $l3
                                get_local $l1
                                set_local $l2
                              end
                              get_local $l3
                              get_local $p0
                              i32.store
                              get_local $l2
                              get_local $p0
                              i32.store offset=12
                              get_local $p0
                              get_local $l1
                              i32.store offset=12
                              get_local $p0
                              get_local $l2
                              i32.store offset=8
                            end
                            get_local $l4
                            i32.const 8
                            i32.add
                            set_local $l2
                            br $B7
                          end
                          i32.const 1
                          set_local $l8
                        end
                        loop $L50
                          block $B51
                            block $B52
                              block $B53
                                block $B54
                                  block $B55
                                    block $B56
                                      block $B57
                                        block $B58
                                          block $B59
                                            block $B60
                                              block $B61
                                                block $B62
                                                  block $B63
                                                    block $B64
                                                      block $B65
                                                        block $B66
                                                          block $B67
                                                            block $B68
                                                              get_local $l8
                                                              br_table $B68 $B67 $B66 $B64 $B63 $B62 $B60 $B59 $B58 $B61 $B65 $B65
                                                            end
                                                            get_local $p0
                                                            i32.load offset=4
                                                            i32.const -8
                                                            i32.and
                                                            get_local $l1
                                                            i32.sub
                                                            tee_local $l0
                                                            get_local $l2
                                                            get_local $l0
                                                            get_local $l2
                                                            i32.lt_u
                                                            tee_local $l0
                                                            select
                                                            set_local $l2
                                                            get_local $p0
                                                            get_local $l3
                                                            get_local $l0
                                                            select
                                                            set_local $l3
                                                            get_local $p0
                                                            tee_local $l0
                                                            i32.load offset=16
                                                            tee_local $p0
                                                            br_if $B57
                                                            i32.const 1
                                                            set_local $l8
                                                            br $L50
                                                          end
                                                          get_local $l0
                                                          i32.const 20
                                                          i32.add
                                                          i32.load
                                                          tee_local $p0
                                                          br_if $B56
                                                          i32.const 2
                                                          set_local $l8
                                                          br $L50
                                                        end
                                                        get_local $l3
                                                        call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                                                        get_local $l2
                                                        i32.const 16
                                                        i32.ge_u
                                                        br_if $B55
                                                        i32.const 10
                                                        set_local $l8
                                                        br $L50
                                                      end
                                                      get_local $l3
                                                      get_local $l2
                                                      get_local $l1
                                                      i32.add
                                                      tee_local $p0
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      get_local $l3
                                                      get_local $p0
                                                      i32.add
                                                      tee_local $p0
                                                      get_local $p0
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br $B51
                                                    end
                                                    get_local $l3
                                                    get_local $l1
                                                    i32.const 3
                                                    i32.or
                                                    i32.store offset=4
                                                    get_local $l3
                                                    get_local $l1
                                                    i32.add
                                                    tee_local $l1
                                                    get_local $l2
                                                    i32.const 1
                                                    i32.or
                                                    i32.store offset=4
                                                    get_local $l1
                                                    get_local $l2
                                                    i32.add
                                                    get_local $l2
                                                    i32.store
                                                    i32.const 0
                                                    i32.load offset=2348
                                                    tee_local $p0
                                                    i32.eqz
                                                    br_if $B54
                                                    i32.const 4
                                                    set_local $l8
                                                    br $L50
                                                  end
                                                  get_local $p0
                                                  i32.const 3
                                                  i32.shr_u
                                                  tee_local $l4
                                                  i32.const 3
                                                  i32.shl
                                                  i32.const 1956
                                                  i32.add
                                                  set_local $l0
                                                  i32.const 0
                                                  i32.load offset=2356
                                                  set_local $p0
                                                  i32.const 0
                                                  i32.load offset=1948
                                                  tee_local $l7
                                                  i32.const 1
                                                  get_local $l4
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  tee_local $l4
                                                  i32.and
                                                  i32.eqz
                                                  br_if $B53
                                                  i32.const 5
                                                  set_local $l8
                                                  br $L50
                                                end
                                                get_local $l0
                                                i32.load offset=8
                                                set_local $l4
                                                br $B52
                                              end
                                              i32.const 0
                                              get_local $l7
                                              get_local $l4
                                              i32.or
                                              i32.store offset=1948
                                              get_local $l0
                                              set_local $l4
                                              i32.const 6
                                              set_local $l8
                                              br $L50
                                            end
                                            get_local $l0
                                            i32.const 8
                                            i32.add
                                            get_local $p0
                                            i32.store
                                            get_local $l4
                                            get_local $p0
                                            i32.store offset=12
                                            get_local $p0
                                            get_local $l0
                                            i32.store offset=12
                                            get_local $p0
                                            get_local $l4
                                            i32.store offset=8
                                            i32.const 7
                                            set_local $l8
                                            br $L50
                                          end
                                          i32.const 0
                                          get_local $l1
                                          i32.store offset=2356
                                          i32.const 0
                                          get_local $l2
                                          i32.store offset=2348
                                          i32.const 8
                                          set_local $l8
                                          br $L50
                                        end
                                        get_local $l3
                                        i32.const 8
                                        i32.add
                                        return
                                      end
                                      i32.const 0
                                      set_local $l8
                                      br $L50
                                    end
                                    i32.const 0
                                    set_local $l8
                                    br $L50
                                  end
                                  i32.const 3
                                  set_local $l8
                                  br $L50
                                end
                                i32.const 7
                                set_local $l8
                                br $L50
                              end
                              i32.const 9
                              set_local $l8
                              br $L50
                            end
                            i32.const 6
                            set_local $l8
                            br $L50
                          end
                          i32.const 8
                          set_local $l8
                          br $L50
                        end
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=2392
                      tee_local $p0
                      get_local $l0
                      get_local $p0
                      get_local $l0
                      i32.lt_u
                      select
                      i32.store offset=2392
                      get_local $l0
                      get_local $l7
                      i32.add
                      set_local $l3
                      i32.const 2372
                      set_local $p0
                      block $B69
                        block $B70
                          block $B71
                            block $B72
                              block $B73
                                loop $L74
                                  get_local $p0
                                  i32.load
                                  get_local $l3
                                  i32.eq
                                  br_if $B73
                                  get_local $p0
                                  i32.load offset=8
                                  tee_local $p0
                                  br_if $L74
                                  br $B72
                                end
                              end
                              get_local $p0
                              i32.load offset=12
                              i32.eqz
                              br_if $B71
                            end
                            i32.const 2372
                            set_local $p0
                            block $B75
                              loop $L76
                                block $B77
                                  get_local $p0
                                  i32.load
                                  tee_local $l3
                                  get_local $l2
                                  i32.gt_u
                                  br_if $B77
                                  get_local $l3
                                  get_local $p0
                                  i32.load offset=4
                                  i32.add
                                  tee_local $l3
                                  get_local $l2
                                  i32.gt_u
                                  br_if $B75
                                end
                                get_local $p0
                                i32.load offset=8
                                set_local $p0
                                br $L76
                              end
                            end
                            get_local $l0
                            get_local $l7
                            i32.const -40
                            i32.add
                            tee_local $p0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            get_local $l0
                            get_local $p0
                            i32.add
                            i32.const 40
                            i32.store offset=4
                            get_local $l2
                            get_local $l3
                            i32.const -32
                            i32.add
                            i32.const -8
                            i32.and
                            i32.const -8
                            i32.add
                            tee_local $l4
                            get_local $l4
                            get_local $l2
                            i32.const 16
                            i32.add
                            i32.lt_u
                            select
                            tee_local $l4
                            i32.const 27
                            i32.store offset=4
                            i32.const 0
                            get_local $l0
                            i32.store offset=2360
                            i32.const 0
                            i32.const 2097152
                            i32.store offset=2388
                            i32.const 0
                            get_local $p0
                            i32.store offset=2352
                            i32.const 0
                            i64.load offset=2372 align=4
                            set_local $l9
                            get_local $l4
                            i32.const 16
                            i32.add
                            i32.const 0
                            i64.load offset=2380 align=4
                            i64.store align=4
                            get_local $l4
                            get_local $l9
                            i64.store offset=8 align=4
                            i32.const 0
                            get_local $l7
                            i32.store offset=2376
                            i32.const 0
                            get_local $l0
                            i32.store offset=2372
                            i32.const 0
                            get_local $l4
                            i32.const 8
                            i32.add
                            i32.store offset=2380
                            i32.const 0
                            i32.const 0
                            i32.store offset=2384
                            get_local $l4
                            i32.const 28
                            i32.add
                            set_local $p0
                            loop $L78
                              get_local $p0
                              i32.const 7
                              i32.store
                              get_local $l3
                              get_local $p0
                              i32.const 4
                              i32.add
                              tee_local $p0
                              i32.gt_u
                              br_if $L78
                            end
                            get_local $l4
                            get_local $l2
                            i32.eq
                            br_if $B8
                            get_local $l4
                            get_local $l4
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                            get_local $l2
                            get_local $l4
                            get_local $l2
                            i32.sub
                            tee_local $p0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            get_local $l4
                            get_local $p0
                            i32.store
                            block $B79
                              get_local $p0
                              i32.const 255
                              i32.gt_u
                              br_if $B79
                              get_local $p0
                              i32.const 3
                              i32.shr_u
                              tee_local $l3
                              i32.const 3
                              i32.shl
                              i32.const 1956
                              i32.add
                              set_local $p0
                              i32.const 0
                              i32.load offset=1948
                              tee_local $l0
                              i32.const 1
                              get_local $l3
                              i32.const 31
                              i32.and
                              i32.shl
                              tee_local $l3
                              i32.and
                              i32.eqz
                              br_if $B70
                              get_local $p0
                              i32.load offset=8
                              set_local $l3
                              br $B69
                            end
                            get_local $l2
                            get_local $p0
                            call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
                            br $B8
                          end
                          get_local $p0
                          get_local $l0
                          i32.store
                          get_local $p0
                          get_local $p0
                          i32.load offset=4
                          get_local $l7
                          i32.add
                          i32.store offset=4
                          get_local $l0
                          get_local $l1
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          get_local $l0
                          get_local $l1
                          i32.add
                          set_local $p0
                          get_local $l3
                          get_local $l0
                          i32.sub
                          get_local $l1
                          i32.sub
                          set_local $l1
                          i32.const 0
                          i32.load offset=2360
                          get_local $l3
                          i32.eq
                          br_if $B6
                          i32.const 0
                          i32.load offset=2356
                          get_local $l3
                          i32.eq
                          br_if $B5
                          get_local $l3
                          i32.load offset=4
                          tee_local $l2
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if $B1
                          get_local $l2
                          i32.const -8
                          i32.and
                          tee_local $l4
                          i32.const 255
                          i32.gt_u
                          br_if $B4
                          get_local $l3
                          i32.load offset=12
                          tee_local $l7
                          get_local $l3
                          i32.load offset=8
                          tee_local $l6
                          i32.eq
                          br_if $B3
                          get_local $l6
                          get_local $l7
                          i32.store offset=12
                          get_local $l7
                          get_local $l6
                          i32.store offset=8
                          br $B2
                        end
                        i32.const 0
                        get_local $l0
                        get_local $l3
                        i32.or
                        i32.store offset=1948
                        get_local $p0
                        set_local $l3
                      end
                      get_local $p0
                      i32.const 8
                      i32.add
                      get_local $l2
                      i32.store
                      get_local $l3
                      get_local $l2
                      i32.store offset=12
                      get_local $l2
                      get_local $p0
                      i32.store offset=12
                      get_local $l2
                      get_local $l3
                      i32.store offset=8
                    end
                    i32.const 0
                    set_local $l2
                    i32.const 0
                    i32.load offset=2352
                    tee_local $p0
                    get_local $l1
                    i32.le_u
                    br_if $B7
                    i32.const 0
                    get_local $p0
                    get_local $l1
                    i32.sub
                    tee_local $l2
                    i32.store offset=2352
                    i32.const 0
                    i32.const 0
                    i32.load offset=2360
                    tee_local $p0
                    get_local $l1
                    i32.add
                    tee_local $l3
                    i32.store offset=2360
                    get_local $l3
                    get_local $l2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local $p0
                    get_local $l1
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    get_local $p0
                    i32.const 8
                    i32.add
                    return
                  end
                  get_local $l2
                  return
                end
                i32.const 0
                get_local $p0
                i32.store offset=2360
                i32.const 0
                i32.const 0
                i32.load offset=2352
                get_local $l1
                i32.add
                tee_local $l1
                i32.store offset=2352
                get_local $p0
                get_local $l1
                i32.const 1
                i32.or
                i32.store offset=4
                br $B0
              end
              get_local $p0
              i32.const 0
              i32.load offset=2348
              get_local $l1
              i32.add
              tee_local $l1
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              get_local $p0
              i32.store offset=2356
              i32.const 0
              get_local $l1
              i32.store offset=2348
              get_local $p0
              get_local $l1
              i32.add
              get_local $l1
              i32.store
              br $B0
            end
            get_local $l3
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
            br $B2
          end
          i32.const 0
          i32.const 0
          i32.load offset=1948
          i32.const -2
          get_local $l2
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1948
        end
        get_local $l4
        get_local $l1
        i32.add
        set_local $l1
        get_local $l3
        get_local $l4
        i32.add
        set_local $l3
      end
      get_local $l3
      get_local $l3
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
      get_local $p0
      get_local $l1
      i32.const 1
      i32.or
      i32.store offset=4
      get_local $p0
      get_local $l1
      i32.add
      get_local $l1
      i32.store
      block $B80
        block $B81
          block $B82
            get_local $l1
            i32.const 255
            i32.gt_u
            br_if $B82
            get_local $l1
            i32.const 3
            i32.shr_u
            tee_local $l2
            i32.const 3
            i32.shl
            i32.const 1956
            i32.add
            set_local $l1
            i32.const 0
            i32.load offset=1948
            tee_local $l3
            i32.const 1
            get_local $l2
            i32.const 31
            i32.and
            i32.shl
            tee_local $l2
            i32.and
            i32.eqz
            br_if $B81
            get_local $l1
            i32.const 8
            i32.add
            set_local $l3
            get_local $l1
            i32.load offset=8
            set_local $l2
            br $B80
          end
          get_local $p0
          get_local $l1
          call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
          br $B0
        end
        i32.const 0
        get_local $l3
        get_local $l2
        i32.or
        i32.store offset=1948
        get_local $l1
        i32.const 8
        i32.add
        set_local $l3
        get_local $l1
        set_local $l2
      end
      get_local $l3
      get_local $p0
      i32.store
      get_local $l2
      get_local $p0
      i32.store offset=12
      get_local $p0
      get_local $l1
      i32.store offset=12
      get_local $p0
      get_local $l2
      i32.store offset=8
    end
    get_local $l0
    i32.const 8
    i32.add)
  (func $core::fmt::write::h533d40856339be39 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32)
    get_global $g0
    i32.const 64
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $l0
    i32.const 36
    i32.add
    tee_local $l1
    get_local $p1
    i32.store
    get_local $l0
    i32.const 52
    i32.add
    tee_local $l2
    get_local $p2
    i32.const 20
    i32.add
    i32.load
    tee_local $l3
    i32.store
    get_local $l0
    i32.const 3
    i32.store8 offset=56
    get_local $l0
    i32.const 8
    i32.add
    i32.const 36
    i32.add
    tee_local $l4
    get_local $p2
    i32.load offset=16
    tee_local $p1
    get_local $l3
    i32.const 3
    i32.shl
    tee_local $l3
    i32.add
    i32.store
    get_local $l0
    i64.const 137438953472
    i64.store offset=8
    get_local $l0
    i32.const 0
    i32.store offset=16
    get_local $l0
    i32.const 0
    i32.store offset=24
    get_local $l0
    get_local $p0
    i32.store offset=32
    get_local $l0
    get_local $p1
    i32.store offset=40
    get_local $l0
    get_local $p1
    i32.store offset=48
    get_local $p2
    i32.load offset=4
    tee_local $l5
    i32.const 3
    i32.shl
    set_local $l6
    get_local $p2
    i32.load
    set_local $l7
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      get_local $p2
                      i32.load offset=8
                      tee_local $p0
                      i32.eqz
                      br_if $B8
                      get_local $p0
                      i32.const 20
                      i32.add
                      set_local $p1
                      get_local $p0
                      get_local $p2
                      i32.const 12
                      i32.add
                      i32.load
                      i32.const 36
                      i32.mul
                      i32.add
                      set_local $l8
                      get_local $l0
                      i32.const 32
                      i32.add
                      set_local $l9
                      get_local $l0
                      i32.const 56
                      i32.add
                      set_local $l10
                      get_local $l0
                      i32.const 48
                      i32.add
                      set_local $l11
                      get_local $l0
                      i32.const 24
                      i32.add
                      set_local $l12
                      get_local $l0
                      i32.const 40
                      i32.add
                      set_local $l13
                      get_local $l6
                      set_local $l5
                      get_local $l7
                      set_local $p2
                      loop $L9
                        get_local $p0
                        get_local $l8
                        i32.eq
                        br_if $B7
                        get_local $l5
                        i32.eqz
                        br_if $B5
                        get_local $l9
                        i32.load
                        get_local $p2
                        i32.load
                        get_local $p2
                        i32.const 4
                        i32.add
                        i32.load
                        get_local $l1
                        i32.load
                        i32.load offset=12
                        call_indirect (type $t5)
                        br_if $B6
                        get_local $l10
                        get_local $p0
                        i32.load8_u offset=32
                        i32.store8
                        get_local $l0
                        get_local $p0
                        i32.load offset=8
                        i32.store offset=12
                        get_local $l0
                        get_local $p0
                        i32.load offset=12
                        i32.store offset=8
                        i32.const 0
                        set_local $l3
                        block $B10
                          block $B11
                            block $B12
                              block $B13
                                get_local $p0
                                i32.load offset=24
                                tee_local $l14
                                i32.const 1
                                i32.eq
                                br_if $B13
                                block $B14
                                  get_local $l14
                                  i32.const 3
                                  i32.eq
                                  br_if $B14
                                  get_local $l14
                                  i32.const 2
                                  i32.ne
                                  br_if $B12
                                  get_local $l13
                                  i32.load
                                  tee_local $l15
                                  get_local $l4
                                  i32.load
                                  i32.eq
                                  br_if $B14
                                  get_local $l13
                                  get_local $l15
                                  i32.const 8
                                  i32.add
                                  i32.store
                                  get_local $l15
                                  i32.load offset=4
                                  i32.const 5
                                  i32.ne
                                  br_if $B10
                                  get_local $l15
                                  i32.load
                                  i32.load
                                  set_local $l14
                                  br $B11
                                end
                                br $B10
                              end
                              get_local $p1
                              i32.const 8
                              i32.add
                              i32.load
                              tee_local $l15
                              get_local $l2
                              i32.load
                              tee_local $l14
                              i32.ge_u
                              br_if $B1
                              get_local $l11
                              i32.load
                              get_local $l15
                              i32.const 3
                              i32.shl
                              i32.add
                              tee_local $l15
                              i32.load offset=4
                              i32.const 5
                              i32.ne
                              br_if $B10
                              get_local $l15
                              i32.load
                              i32.load
                              set_local $l14
                              br $B11
                            end
                            get_local $p1
                            i32.const 8
                            i32.add
                            i32.load
                            set_local $l14
                          end
                          i32.const 1
                          set_local $l3
                        end
                        get_local $l0
                        i32.const 8
                        i32.add
                        i32.const 12
                        i32.add
                        get_local $l14
                        i32.store
                        get_local $l0
                        i32.const 8
                        i32.add
                        i32.const 8
                        i32.add
                        get_local $l3
                        i32.store
                        i32.const 0
                        set_local $l3
                        block $B15
                          block $B16
                            block $B17
                              block $B18
                                get_local $p0
                                i32.load offset=16
                                tee_local $l14
                                i32.const 1
                                i32.eq
                                br_if $B18
                                block $B19
                                  get_local $l14
                                  i32.const 3
                                  i32.eq
                                  br_if $B19
                                  get_local $l14
                                  i32.const 2
                                  i32.ne
                                  br_if $B17
                                  get_local $l13
                                  i32.load
                                  tee_local $l15
                                  get_local $l4
                                  i32.load
                                  i32.eq
                                  br_if $B19
                                  get_local $l13
                                  get_local $l15
                                  i32.const 8
                                  i32.add
                                  i32.store
                                  get_local $l15
                                  i32.load offset=4
                                  i32.const 5
                                  i32.ne
                                  br_if $B15
                                  get_local $l15
                                  i32.load
                                  i32.load
                                  set_local $l14
                                  br $B16
                                end
                                br $B15
                              end
                              get_local $p1
                              i32.load
                              tee_local $l15
                              get_local $l2
                              i32.load
                              tee_local $l14
                              i32.ge_u
                              br_if $B0
                              get_local $l11
                              i32.load
                              get_local $l15
                              i32.const 3
                              i32.shl
                              i32.add
                              tee_local $l15
                              i32.load offset=4
                              i32.const 5
                              i32.ne
                              br_if $B15
                              get_local $l15
                              i32.load
                              i32.load
                              set_local $l14
                              br $B16
                            end
                            get_local $p1
                            i32.load
                            set_local $l14
                          end
                          i32.const 1
                          set_local $l3
                        end
                        get_local $l0
                        i32.const 8
                        i32.add
                        i32.const 20
                        i32.add
                        get_local $l14
                        i32.store
                        get_local $l12
                        get_local $l3
                        i32.store
                        block $B20
                          block $B21
                            get_local $p0
                            i32.load
                            i32.const 1
                            i32.ne
                            br_if $B21
                            get_local $p1
                            i32.const -16
                            i32.add
                            i32.load
                            tee_local $l3
                            get_local $l2
                            i32.load
                            tee_local $l14
                            i32.ge_u
                            br_if $B3
                            get_local $l11
                            i32.load
                            get_local $l3
                            i32.const 3
                            i32.shl
                            i32.add
                            set_local $l3
                            br $B20
                          end
                          get_local $l13
                          i32.load
                          tee_local $l3
                          get_local $l4
                          i32.load
                          i32.eq
                          br_if $B2
                          get_local $l13
                          get_local $l3
                          i32.const 8
                          i32.add
                          i32.store
                        end
                        get_local $p0
                        i32.const 36
                        i32.add
                        set_local $p0
                        get_local $p2
                        i32.const 8
                        i32.add
                        set_local $p2
                        get_local $p1
                        i32.const 36
                        i32.add
                        set_local $p1
                        get_local $l5
                        i32.const -8
                        i32.add
                        set_local $l5
                        get_local $l3
                        i32.load
                        get_local $l0
                        i32.const 8
                        i32.add
                        get_local $l3
                        i32.const 4
                        i32.add
                        i32.load
                        call_indirect (type $t3)
                        i32.eqz
                        br_if $L9
                        br $B6
                      end
                    end
                    get_local $l5
                    i32.const 3
                    i32.shl
                    set_local $p0
                    get_local $l0
                    i32.const 32
                    i32.add
                    set_local $l13
                    get_local $l7
                    set_local $p2
                    loop $L22
                      get_local $l3
                      i32.eqz
                      br_if $B7
                      get_local $p0
                      i32.eqz
                      br_if $B5
                      get_local $l13
                      i32.load
                      get_local $p2
                      i32.load
                      get_local $p2
                      i32.const 4
                      i32.add
                      i32.load
                      get_local $l1
                      i32.load
                      i32.load offset=12
                      call_indirect (type $t5)
                      br_if $B6
                      get_local $l3
                      i32.const -8
                      i32.add
                      set_local $l3
                      get_local $p0
                      i32.const -8
                      i32.add
                      set_local $p0
                      get_local $p2
                      i32.const 8
                      i32.add
                      set_local $p2
                      get_local $p1
                      i32.load
                      set_local $l5
                      get_local $p1
                      i32.load offset=4
                      set_local $l14
                      get_local $p1
                      i32.const 8
                      i32.add
                      set_local $p1
                      get_local $l5
                      get_local $l0
                      i32.const 8
                      i32.add
                      get_local $l14
                      call_indirect (type $t3)
                      i32.eqz
                      br_if $L22
                      br $B6
                    end
                  end
                  get_local $p2
                  get_local $l7
                  get_local $l6
                  i32.add
                  i32.eq
                  br_if $B5
                  get_local $l0
                  i32.const 32
                  i32.add
                  i32.load
                  get_local $p2
                  i32.load
                  get_local $p2
                  i32.load offset=4
                  get_local $l0
                  i32.const 36
                  i32.add
                  i32.load
                  i32.load offset=12
                  call_indirect (type $t5)
                  i32.eqz
                  br_if $B5
                end
                i32.const 1
                set_local $p0
                br $B4
              end
              i32.const 0
              set_local $p0
            end
            get_local $l0
            i32.const 64
            i32.add
            set_global $g0
            get_local $p0
            return
          end
          i32.const 1840
          get_local $l3
          get_local $l14
          call $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02
          unreachable
        end
        i32.const 1816
        call $core::panicking::panic::haf7d7779169c0743
        unreachable
      end
      i32.const 1800
      get_local $l15
      get_local $l14
      call $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02
      unreachable
    end
    i32.const 1800
    get_local $l15
    get_local $l14
    call $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8 (type $t1) (param $p0 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    get_local $p0
    i32.const -8
    i32.add
    tee_local $l0
    get_local $p0
    i32.const -4
    i32.add
    i32.load
    tee_local $l1
    i32.const -8
    i32.and
    tee_local $p0
    i32.add
    set_local $l2
    block $B0
      block $B1
        get_local $l1
        i32.const 1
        i32.and
        br_if $B1
        get_local $l1
        i32.const 3
        i32.and
        i32.eqz
        br_if $B0
        get_local $l0
        i32.load
        tee_local $l1
        get_local $p0
        i32.add
        set_local $p0
        block $B2
          block $B3
            block $B4
              i32.const 0
              i32.load offset=2356
              get_local $l0
              get_local $l1
              i32.sub
              tee_local $l0
              i32.eq
              br_if $B4
              get_local $l1
              i32.const 255
              i32.gt_u
              br_if $B3
              get_local $l0
              i32.load offset=12
              tee_local $l3
              get_local $l0
              i32.load offset=8
              tee_local $l4
              i32.eq
              br_if $B2
              get_local $l4
              get_local $l3
              i32.store offset=12
              get_local $l3
              get_local $l4
              i32.store offset=8
              br $B1
            end
            get_local $l2
            i32.load offset=4
            tee_local $l1
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if $B1
            i32.const 0
            get_local $p0
            i32.store offset=2348
            get_local $l2
            i32.const 4
            i32.add
            get_local $l1
            i32.const -2
            i32.and
            i32.store
            get_local $l0
            get_local $p0
            i32.const 1
            i32.or
            i32.store offset=4
            get_local $l0
            get_local $p0
            i32.add
            get_local $p0
            i32.store
            return
          end
          get_local $l0
          call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
          br $B1
        end
        i32.const 0
        i32.const 0
        i32.load offset=1948
        i32.const -2
        get_local $l1
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store offset=1948
      end
      block $B5
        block $B6
          block $B7
            block $B8
              block $B9
                block $B10
                  block $B11
                    block $B12
                      block $B13
                        get_local $l2
                        i32.load offset=4
                        tee_local $l1
                        i32.const 2
                        i32.and
                        br_if $B13
                        i32.const 0
                        i32.load offset=2360
                        get_local $l2
                        i32.eq
                        br_if $B12
                        i32.const 0
                        i32.load offset=2356
                        get_local $l2
                        i32.eq
                        br_if $B11
                        get_local $l1
                        i32.const -8
                        i32.and
                        tee_local $l3
                        get_local $p0
                        i32.add
                        set_local $p0
                        get_local $l3
                        i32.const 255
                        i32.gt_u
                        br_if $B10
                        get_local $l2
                        i32.load offset=12
                        tee_local $l3
                        get_local $l2
                        i32.load offset=8
                        tee_local $l2
                        i32.eq
                        br_if $B9
                        get_local $l2
                        get_local $l3
                        i32.store offset=12
                        get_local $l3
                        get_local $l2
                        i32.store offset=8
                        br $B8
                      end
                      get_local $l2
                      i32.const 4
                      i32.add
                      get_local $l1
                      i32.const -2
                      i32.and
                      i32.store
                      get_local $l0
                      get_local $p0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local $l0
                      get_local $p0
                      i32.add
                      get_local $p0
                      i32.store
                      br $B5
                    end
                    i32.const 0
                    get_local $l0
                    i32.store offset=2360
                    i32.const 0
                    i32.const 0
                    i32.load offset=2352
                    get_local $p0
                    i32.add
                    tee_local $p0
                    i32.store offset=2352
                    get_local $l0
                    get_local $p0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block $B14
                      get_local $l0
                      i32.const 0
                      i32.load offset=2356
                      i32.ne
                      br_if $B14
                      i32.const 0
                      i32.const 0
                      i32.store offset=2348
                      i32.const 0
                      i32.const 0
                      i32.store offset=2356
                    end
                    i32.const 0
                    i32.load offset=2388
                    get_local $p0
                    i32.ge_u
                    br_if $B0
                    block $B15
                      get_local $p0
                      i32.const 41
                      i32.lt_u
                      br_if $B15
                      i32.const 2372
                      set_local $p0
                      loop $L16
                        block $B17
                          get_local $p0
                          i32.load
                          tee_local $l2
                          get_local $l0
                          i32.gt_u
                          br_if $B17
                          get_local $l2
                          get_local $p0
                          i32.load offset=4
                          i32.add
                          get_local $l0
                          i32.gt_u
                          br_if $B15
                        end
                        get_local $p0
                        i32.load offset=8
                        tee_local $p0
                        br_if $L16
                      end
                    end
                    i32.const 0
                    set_local $l0
                    i32.const 0
                    i32.load offset=2380
                    tee_local $p0
                    i32.eqz
                    br_if $B7
                    loop $L18
                      get_local $l0
                      i32.const 1
                      i32.add
                      set_local $l0
                      get_local $p0
                      i32.load offset=8
                      tee_local $p0
                      br_if $L18
                    end
                    get_local $l0
                    i32.const 4095
                    get_local $l0
                    i32.const 4095
                    i32.gt_u
                    select
                    set_local $l0
                    br $B6
                  end
                  i32.const 0
                  get_local $l0
                  i32.store offset=2356
                  i32.const 0
                  i32.const 0
                  i32.load offset=2348
                  get_local $p0
                  i32.add
                  tee_local $p0
                  i32.store offset=2348
                  get_local $l0
                  get_local $p0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local $l0
                  get_local $p0
                  i32.add
                  get_local $p0
                  i32.store
                  return
                end
                get_local $l2
                call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                br $B8
              end
              i32.const 0
              i32.const 0
              i32.load offset=1948
              i32.const -2
              get_local $l1
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1948
            end
            get_local $l0
            get_local $p0
            i32.const 1
            i32.or
            i32.store offset=4
            get_local $l0
            get_local $p0
            i32.add
            get_local $p0
            i32.store
            get_local $l0
            i32.const 0
            i32.load offset=2356
            i32.ne
            br_if $B5
            i32.const 0
            get_local $p0
            i32.store offset=2348
            return
          end
          i32.const 4095
          set_local $l0
        end
        i32.const 0
        i32.const -1
        i32.store offset=2388
        i32.const 0
        get_local $l0
        i32.store offset=2396
        return
      end
      block $B19
        block $B20
          block $B21
            block $B22
              block $B23
                get_local $p0
                i32.const 255
                i32.gt_u
                br_if $B23
                get_local $p0
                i32.const 3
                i32.shr_u
                tee_local $l2
                i32.const 3
                i32.shl
                i32.const 1956
                i32.add
                set_local $p0
                i32.const 0
                i32.load offset=1948
                tee_local $l1
                i32.const 1
                get_local $l2
                i32.const 31
                i32.and
                i32.shl
                tee_local $l2
                i32.and
                i32.eqz
                br_if $B22
                get_local $p0
                i32.const 8
                i32.add
                set_local $l1
                get_local $p0
                i32.load offset=8
                set_local $l2
                br $B21
              end
              get_local $l0
              get_local $p0
              call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
              i32.const 0
              i32.const 0
              i32.load offset=2396
              i32.const -1
              i32.add
              tee_local $l0
              i32.store offset=2396
              get_local $l0
              br_if $B0
              i32.const 0
              i32.load offset=2380
              tee_local $p0
              i32.eqz
              br_if $B20
              i32.const 0
              set_local $l0
              loop $L24
                get_local $l0
                i32.const 1
                i32.add
                set_local $l0
                get_local $p0
                i32.load offset=8
                tee_local $p0
                br_if $L24
              end
              get_local $l0
              i32.const 4095
              get_local $l0
              i32.const 4095
              i32.gt_u
              select
              set_local $l0
              br $B19
            end
            i32.const 0
            get_local $l1
            get_local $l2
            i32.or
            i32.store offset=1948
            get_local $p0
            i32.const 8
            i32.add
            set_local $l1
            get_local $p0
            set_local $l2
          end
          get_local $l1
          get_local $l0
          i32.store
          get_local $l2
          get_local $l0
          i32.store offset=12
          get_local $l0
          get_local $p0
          i32.store offset=12
          get_local $l0
          get_local $l2
          i32.store offset=8
          return
        end
        i32.const 4095
        set_local $l0
      end
      i32.const 0
      get_local $l0
      i32.store offset=2396
    end)
  (func $rust_oom (type $t2) (param $p0 i32) (param $p1 i32)
    unreachable
    unreachable)
  (func $core::result::unwrap_failed::ha655e72972fab217 (type $t0)
    (local $l0 i32)
    get_global $g0
    i32.const 64
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $l0
    i32.const 51
    i32.store offset=12
    get_local $l0
    i32.const 1176
    i32.store offset=8
    get_local $l0
    i32.const 40
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local $l0
    i32.const 16
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local $l0
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    get_local $l0
    i32.const 3
    i32.store offset=44
    get_local $l0
    i32.const 1752
    i32.store offset=16
    get_local $l0
    i32.const 2
    i32.store offset=20
    get_local $l0
    i32.const 1248
    i32.store offset=24
    get_local $l0
    get_local $l0
    i32.const 8
    i32.add
    i32.store offset=40
    get_local $l0
    get_local $l0
    i32.const 56
    i32.add
    i32.store offset=48
    get_local $l0
    get_local $l0
    i32.const 40
    i32.add
    i32.store offset=32
    get_local $l0
    i32.const 16
    i32.add
    i32.const 1768
    call $core::panicking::panic_fmt::h29e5105b4d53bc05
    unreachable)
  (func $wasm_bindgen::throw::hb552665eadbe0155 (type $t0)
    i32.const 1032
    i32.const 22
    call $__wbindgen_throw
    unreachable)
  (func $__wbindgen_malloc (export "__wbindgen_malloc") (type $t4) (param $p0 i32) (result i32)
    block $B0
      block $B1
        get_local $p0
        i32.eqz
        br_if $B1
        get_local $p0
        i32.const 0
        i32.lt_s
        br_if $B0
        get_local $p0
        call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
        tee_local $p0
        i32.eqz
        br_if $B0
        get_local $p0
        return
      end
      i32.const 1
      return
    end
    call $wasm_bindgen::throw::hb552665eadbe0155
    unreachable)
  (func $__wbindgen_free (export "__wbindgen_free") (type $t2) (param $p0 i32) (param $p1 i32)
    block $B0
      get_local $p1
      i32.eqz
      br_if $B0
      get_local $p0
      call $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8
    end)
  (func $std::panicking::rust_panic_with_hook::h9b1c029d1ceaded2 (type $t1) (param $p0 i32)
    (local $l0 i32) (local $l1 i32)
    i32.const 1
    set_local $l0
    block $B0
      block $B1
        block $B2
          i32.const 0
          i32.load offset=1928
          i32.const 1
          i32.ne
          br_if $B2
          i32.const 0
          i32.const 0
          i32.load offset=1932
          i32.const 1
          i32.add
          tee_local $l0
          i32.store offset=1932
          get_local $l0
          i32.const 3
          i32.lt_u
          br_if $B1
          br $B0
        end
        i32.const 0
        i64.const 4294967297
        i64.store offset=1928
      end
      i32.const 0
      i32.load offset=1940
      tee_local $l1
      i32.const -1
      i32.le_s
      br_if $B0
      i32.const 0
      get_local $l1
      i32.store offset=1940
      get_local $l0
      i32.const 2
      i32.lt_u
      drop
    end
    unreachable
    unreachable)
  (func $rust_begin_unwind (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32) (param $p7 i32) (param $p8 i32) (param $p9 i32)
    (local $l0 i32)
    get_global $g0
    i32.const 48
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $l0
    i32.const 20
    i32.add
    get_local $p3
    i32.store
    get_local $l0
    i32.const 28
    i32.add
    get_local $p5
    i32.store
    get_local $l0
    get_local $p1
    i32.store offset=12
    get_local $l0
    get_local $p0
    i32.store offset=8
    get_local $l0
    get_local $p2
    i32.store offset=16
    get_local $l0
    get_local $p4
    i32.store offset=24
    get_local $l0
    get_local $p7
    i32.store offset=36
    get_local $l0
    get_local $p6
    i32.store offset=32
    get_local $l0
    get_local $p8
    i32.store offset=40
    get_local $l0
    get_local $p9
    i32.store offset=44
    get_local $l0
    i32.const 8
    i32.add
    get_local $l0
    i32.const 32
    i32.add
    call $std::panicking::begin_panic_fmt::h29d4906ca23d78a0
    unreachable)
  (func $std::panicking::begin_panic_fmt::h29d4906ca23d78a0 (type $t2) (param $p0 i32) (param $p1 i32)
    get_local $p1
    call $std::panicking::rust_panic_with_hook::h9b1c029d1ceaded2
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651 (type $t1) (param $p0 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    get_local $p0
    i32.load offset=24
    set_local $l0
    block $B0
      block $B1
        block $B2
          block $B3
            get_local $p0
            i32.load offset=12
            tee_local $l1
            get_local $p0
            i32.eq
            br_if $B3
            get_local $p0
            i32.load offset=8
            tee_local $l2
            get_local $l1
            i32.store offset=12
            get_local $l1
            get_local $l2
            i32.store offset=8
            get_local $l0
            br_if $B2
            br $B1
          end
          block $B4
            get_local $p0
            i32.const 20
            i32.add
            tee_local $l2
            get_local $p0
            i32.const 16
            i32.add
            get_local $l2
            i32.load
            select
            tee_local $l3
            i32.load
            tee_local $l2
            i32.eqz
            br_if $B4
            block $B5
              loop $L6
                get_local $l3
                set_local $l4
                block $B7
                  get_local $l2
                  tee_local $l1
                  i32.const 20
                  i32.add
                  tee_local $l3
                  i32.load
                  tee_local $l2
                  i32.eqz
                  br_if $B7
                  get_local $l2
                  br_if $L6
                  br $B5
                end
                get_local $l1
                i32.const 16
                i32.add
                set_local $l3
                get_local $l1
                i32.load offset=16
                tee_local $l2
                br_if $L6
              end
            end
            get_local $l4
            i32.const 0
            i32.store
            get_local $l0
            br_if $B2
            br $B1
          end
          i32.const 0
          set_local $l1
          get_local $l0
          i32.eqz
          br_if $B1
        end
        block $B8
          block $B9
            get_local $p0
            i32.load offset=28
            tee_local $l3
            i32.const 2
            i32.shl
            i32.const 2220
            i32.add
            tee_local $l2
            i32.load
            get_local $p0
            i32.eq
            br_if $B9
            get_local $l0
            i32.const 16
            i32.add
            get_local $l0
            i32.const 20
            i32.add
            get_local $l0
            i32.load offset=16
            get_local $p0
            i32.eq
            select
            get_local $l1
            i32.store
            get_local $l1
            br_if $B8
            br $B1
          end
          get_local $l2
          get_local $l1
          i32.store
          get_local $l1
          i32.eqz
          br_if $B0
        end
        get_local $l1
        get_local $l0
        i32.store offset=24
        block $B10
          get_local $p0
          i32.load offset=16
          tee_local $l2
          i32.eqz
          br_if $B10
          get_local $l1
          get_local $l2
          i32.store offset=16
          get_local $l2
          get_local $l1
          i32.store offset=24
        end
        get_local $p0
        i32.const 20
        i32.add
        i32.load
        tee_local $l2
        i32.eqz
        br_if $B1
        get_local $l1
        i32.const 20
        i32.add
        get_local $l2
        i32.store
        get_local $l2
        get_local $l1
        i32.store offset=24
      end
      return
    end
    i32.const 0
    i32.const 0
    i32.load offset=1952
    i32.const -2
    get_local $l3
    i32.rotl
    i32.and
    i32.store offset=1952)
  (func $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    i32.const 0
    set_local $l0
    block $B0
      get_local $p1
      i32.const 8
      i32.shr_u
      tee_local $l1
      i32.eqz
      br_if $B0
      i32.const 31
      set_local $l0
      get_local $p1
      i32.const 16777215
      i32.gt_u
      br_if $B0
      get_local $p1
      i32.const 38
      get_local $l1
      i32.clz
      tee_local $l0
      i32.sub
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.const 31
      get_local $l0
      i32.sub
      i32.const 1
      i32.shl
      i32.or
      set_local $l0
    end
    get_local $p0
    get_local $l0
    i32.store offset=28
    get_local $p0
    i64.const 0
    i64.store offset=16 align=4
    get_local $l0
    i32.const 2
    i32.shl
    i32.const 2220
    i32.add
    set_local $l1
    block $B1
      block $B2
        block $B3
          block $B4
            i32.const 0
            i32.load offset=1952
            tee_local $l2
            i32.const 1
            get_local $l0
            i32.const 31
            i32.and
            i32.shl
            tee_local $l3
            i32.and
            i32.eqz
            br_if $B4
            get_local $l1
            i32.load
            tee_local $l2
            i32.load offset=4
            i32.const -8
            i32.and
            get_local $p1
            i32.ne
            br_if $B3
            get_local $l2
            set_local $l0
            br $B2
          end
          get_local $l1
          get_local $p0
          i32.store
          i32.const 0
          get_local $l2
          get_local $l3
          i32.or
          i32.store offset=1952
          get_local $p0
          get_local $l1
          i32.store offset=24
          get_local $p0
          get_local $p0
          i32.store offset=8
          get_local $p0
          get_local $p0
          i32.store offset=12
          return
        end
        get_local $p1
        i32.const 0
        i32.const 25
        get_local $l0
        i32.const 1
        i32.shr_u
        i32.sub
        i32.const 31
        i32.and
        get_local $l0
        i32.const 31
        i32.eq
        select
        i32.shl
        set_local $l1
        loop $L5
          get_local $l2
          get_local $l1
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          tee_local $l3
          i32.load
          tee_local $l0
          i32.eqz
          br_if $B1
          get_local $l1
          i32.const 1
          i32.shl
          set_local $l1
          get_local $l0
          set_local $l2
          get_local $l0
          i32.load offset=4
          i32.const -8
          i32.and
          get_local $p1
          i32.ne
          br_if $L5
        end
      end
      get_local $l0
      i32.load offset=8
      tee_local $l1
      get_local $p0
      i32.store offset=12
      get_local $l0
      get_local $p0
      i32.store offset=8
      get_local $p0
      get_local $l0
      i32.store offset=12
      get_local $p0
      get_local $l1
      i32.store offset=8
      get_local $p0
      i32.const 0
      i32.store offset=24
      return
    end
    get_local $l3
    get_local $p0
    i32.store
    get_local $p0
    get_local $l2
    i32.store offset=24
    get_local $p0
    get_local $p0
    i32.store offset=12
    get_local $p0
    get_local $p0
    i32.store offset=8)
  (func $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755 (type $t2) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    get_local $p0
    get_local $p1
    i32.add
    set_local $l0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    get_local $p0
                    i32.load offset=4
                    tee_local $l1
                    i32.const 1
                    i32.and
                    br_if $B7
                    get_local $l1
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if $B6
                    get_local $p0
                    i32.load
                    tee_local $l1
                    get_local $p1
                    i32.add
                    set_local $p1
                    block $B8
                      block $B9
                        block $B10
                          i32.const 0
                          i32.load offset=2356
                          get_local $p0
                          get_local $l1
                          i32.sub
                          tee_local $p0
                          i32.eq
                          br_if $B10
                          get_local $l1
                          i32.const 255
                          i32.gt_u
                          br_if $B9
                          get_local $p0
                          i32.load offset=12
                          tee_local $l2
                          get_local $p0
                          i32.load offset=8
                          tee_local $l3
                          i32.eq
                          br_if $B8
                          get_local $l3
                          get_local $l2
                          i32.store offset=12
                          get_local $l2
                          get_local $l3
                          i32.store offset=8
                          br $B7
                        end
                        get_local $l0
                        i32.load offset=4
                        tee_local $l1
                        i32.const 3
                        i32.and
                        i32.const 3
                        i32.ne
                        br_if $B7
                        i32.const 0
                        get_local $p1
                        i32.store offset=2348
                        get_local $l0
                        i32.const 4
                        i32.add
                        get_local $l1
                        i32.const -2
                        i32.and
                        i32.store
                        get_local $p0
                        get_local $p1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        get_local $l0
                        get_local $p1
                        i32.store
                        return
                      end
                      get_local $p0
                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                      br $B7
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1948
                    i32.const -2
                    get_local $l1
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1948
                  end
                  block $B11
                    block $B12
                      get_local $l0
                      i32.load offset=4
                      tee_local $l1
                      i32.const 2
                      i32.and
                      br_if $B12
                      i32.const 0
                      i32.load offset=2360
                      get_local $l0
                      i32.eq
                      br_if $B11
                      i32.const 0
                      i32.load offset=2356
                      get_local $l0
                      i32.eq
                      br_if $B5
                      get_local $l1
                      i32.const -8
                      i32.and
                      tee_local $l2
                      get_local $p1
                      i32.add
                      set_local $p1
                      get_local $l2
                      i32.const 255
                      i32.gt_u
                      br_if $B4
                      get_local $l0
                      i32.load offset=12
                      tee_local $l2
                      get_local $l0
                      i32.load offset=8
                      tee_local $l0
                      i32.eq
                      br_if $B2
                      get_local $l0
                      get_local $l2
                      i32.store offset=12
                      get_local $l2
                      get_local $l0
                      i32.store offset=8
                      br $B1
                    end
                    get_local $l0
                    i32.const 4
                    i32.add
                    get_local $l1
                    i32.const -2
                    i32.and
                    i32.store
                    get_local $p0
                    get_local $p1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local $p0
                    get_local $p1
                    i32.add
                    get_local $p1
                    i32.store
                    br $B0
                  end
                  i32.const 0
                  get_local $p0
                  i32.store offset=2360
                  i32.const 0
                  i32.const 0
                  i32.load offset=2352
                  get_local $p1
                  i32.add
                  tee_local $p1
                  i32.store offset=2352
                  get_local $p0
                  get_local $p1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local $p0
                  i32.const 0
                  i32.load offset=2356
                  i32.eq
                  br_if $B3
                end
                return
              end
              i32.const 0
              get_local $p0
              i32.store offset=2356
              i32.const 0
              i32.const 0
              i32.load offset=2348
              get_local $p1
              i32.add
              tee_local $p1
              i32.store offset=2348
              get_local $p0
              get_local $p1
              i32.const 1
              i32.or
              i32.store offset=4
              get_local $p0
              get_local $p1
              i32.add
              get_local $p1
              i32.store
              return
            end
            get_local $l0
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
            br $B1
          end
          i32.const 0
          i32.const 0
          i32.store offset=2348
          i32.const 0
          i32.const 0
          i32.store offset=2356
          return
        end
        i32.const 0
        i32.const 0
        i32.load offset=1948
        i32.const -2
        get_local $l1
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store offset=1948
      end
      get_local $p0
      get_local $p1
      i32.const 1
      i32.or
      i32.store offset=4
      get_local $p0
      get_local $p1
      i32.add
      get_local $p1
      i32.store
      get_local $p0
      i32.const 0
      i32.load offset=2356
      i32.ne
      br_if $B0
      i32.const 0
      get_local $p1
      i32.store offset=2348
      return
    end
    block $B13
      block $B14
        block $B15
          get_local $p1
          i32.const 255
          i32.gt_u
          br_if $B15
          get_local $p1
          i32.const 3
          i32.shr_u
          tee_local $l0
          i32.const 3
          i32.shl
          i32.const 1956
          i32.add
          set_local $p1
          i32.const 0
          i32.load offset=1948
          tee_local $l1
          i32.const 1
          get_local $l0
          i32.const 31
          i32.and
          i32.shl
          tee_local $l0
          i32.and
          i32.eqz
          br_if $B14
          get_local $p1
          i32.load offset=8
          set_local $l0
          br $B13
        end
        get_local $p0
        get_local $p1
        call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
        return
      end
      i32.const 0
      get_local $l1
      get_local $l0
      i32.or
      i32.store offset=1948
      get_local $p1
      set_local $l0
    end
    get_local $p1
    i32.const 8
    i32.add
    get_local $p0
    i32.store
    get_local $l0
    get_local $p0
    i32.store offset=12
    get_local $p0
    get_local $p1
    i32.store offset=12
    get_local $p0
    get_local $l0
    i32.store offset=8)
  (func $core::ptr::drop_in_place::h2745c3a200e8c575 (type $t1) (param $p0 i32))
  (func $alloc::raw_vec::capacity_overflow::h034ca36241ac64a2 (type $t0)
    i32.const 1728
    call $core::panicking::panic::haf7d7779169c0743
    unreachable)
  (func $core::panicking::panic::haf7d7779169c0743 (type $t1) (param $p0 i32)
    (local $l0 i32) (local $l1 i64) (local $l2 i64) (local $l3 i64)
    get_global $g0
    i32.const 48
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $p0
    i64.load offset=16 align=4
    set_local $l1
    get_local $p0
    i64.load offset=8 align=4
    set_local $l2
    get_local $p0
    i64.load align=4
    set_local $l3
    get_local $l0
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    get_local $l0
    get_local $l3
    i64.store offset=24
    get_local $l0
    i64.const 1
    i64.store offset=4 align=4
    get_local $l0
    i32.const 1460
    i32.store offset=16
    get_local $l0
    get_local $l0
    i32.const 24
    i32.add
    i32.store
    get_local $l0
    get_local $l2
    i64.store offset=32
    get_local $l0
    get_local $l1
    i64.store offset=40
    get_local $l0
    get_local $l0
    i32.const 32
    i32.add
    call $core::panicking::panic_fmt::h29e5105b4d53bc05
    unreachable)
  (func $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32)
    i32.const 2
    set_local $l0
    block $B0
      get_local $p0
      i32.load offset=4
      tee_local $l1
      get_local $p1
      i32.sub
      get_local $p2
      i32.ge_u
      br_if $B0
      i32.const 0
      set_local $l0
      get_local $p1
      get_local $p2
      i32.add
      tee_local $p2
      get_local $p1
      i32.lt_u
      br_if $B0
      i32.const 0
      set_local $l0
      get_local $l1
      i32.const 1
      i32.shl
      tee_local $p1
      get_local $p2
      get_local $p2
      get_local $p1
      i32.lt_u
      select
      tee_local $p1
      i32.const 0
      i32.lt_s
      br_if $B0
      block $B1
        block $B2
          block $B3
            get_local $l1
            i32.eqz
            br_if $B3
            get_local $p0
            i32.load
            get_local $p1
            call $__rust_realloc
            tee_local $l0
            i32.eqz
            br_if $B2
            br $B1
          end
          get_local $p1
          call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
          tee_local $l0
          br_if $B1
        end
        get_local $p1
        i32.const 1
        call $rust_oom
        unreachable
      end
      get_local $p0
      get_local $l0
      i32.store
      get_local $p0
      i32.const 4
      i32.add
      get_local $p1
      i32.store
      i32.const 2
      set_local $l0
    end
    get_local $l0)
  (func $__rust_realloc (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    i32.const 0
    set_local $l0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              get_local $p1
              i32.const -65
              i32.gt_u
              br_if $B4
              i32.const 16
              get_local $p1
              i32.const 11
              i32.add
              i32.const -8
              i32.and
              get_local $p1
              i32.const 11
              i32.lt_u
              select
              set_local $l1
              get_local $p0
              i32.const -4
              i32.add
              tee_local $l2
              i32.load
              tee_local $l3
              i32.const -8
              i32.and
              set_local $l4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        get_local $l3
                        i32.const 3
                        i32.and
                        i32.eqz
                        br_if $B9
                        get_local $p0
                        i32.const -8
                        i32.add
                        tee_local $l5
                        get_local $l4
                        i32.add
                        set_local $l6
                        get_local $l4
                        get_local $l1
                        i32.ge_u
                        br_if $B8
                        i32.const 0
                        i32.load offset=2360
                        get_local $l6
                        i32.eq
                        br_if $B7
                        i32.const 0
                        i32.load offset=2356
                        get_local $l6
                        i32.eq
                        br_if $B6
                        get_local $l6
                        i32.load offset=4
                        tee_local $l3
                        i32.const 2
                        i32.and
                        br_if $B5
                        get_local $l3
                        i32.const -8
                        i32.and
                        tee_local $l7
                        get_local $l4
                        i32.add
                        tee_local $l4
                        get_local $l1
                        i32.lt_u
                        br_if $B5
                        get_local $l4
                        get_local $l1
                        i32.sub
                        set_local $p1
                        get_local $l7
                        i32.const 255
                        i32.gt_u
                        br_if $B2
                        get_local $l6
                        i32.load offset=12
                        tee_local $l0
                        get_local $l6
                        i32.load offset=8
                        tee_local $l6
                        i32.eq
                        br_if $B1
                        get_local $l6
                        get_local $l0
                        i32.store offset=12
                        get_local $l0
                        get_local $l6
                        i32.store offset=8
                        br $B0
                      end
                      get_local $l1
                      i32.const 256
                      i32.lt_u
                      br_if $B5
                      get_local $l4
                      get_local $l1
                      i32.const 4
                      i32.or
                      i32.lt_u
                      br_if $B5
                      get_local $l4
                      get_local $l1
                      i32.sub
                      i32.const 131073
                      i32.ge_u
                      br_if $B5
                      get_local $p0
                      return
                    end
                    block $B10
                      get_local $l4
                      get_local $l1
                      i32.sub
                      tee_local $p1
                      i32.const 16
                      i32.ge_u
                      br_if $B10
                      get_local $p0
                      return
                    end
                    get_local $l2
                    get_local $l1
                    get_local $l3
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    get_local $l5
                    get_local $l1
                    i32.add
                    tee_local $l0
                    get_local $p1
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    get_local $l6
                    get_local $l6
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local $l0
                    get_local $p1
                    call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755
                    get_local $p0
                    return
                  end
                  i32.const 0
                  i32.load offset=2352
                  get_local $l4
                  i32.add
                  tee_local $l4
                  get_local $l1
                  i32.le_u
                  br_if $B5
                  get_local $l2
                  get_local $l1
                  get_local $l3
                  i32.const 1
                  i32.and
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  i32.const 0
                  get_local $l5
                  get_local $l1
                  i32.add
                  tee_local $p1
                  i32.store offset=2360
                  i32.const 0
                  get_local $l4
                  get_local $l1
                  i32.sub
                  tee_local $l0
                  i32.store offset=2352
                  get_local $p1
                  get_local $l0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  get_local $p0
                  return
                end
                i32.const 0
                i32.load offset=2348
                get_local $l4
                i32.add
                tee_local $l4
                get_local $l1
                i32.ge_u
                br_if $B3
              end
              get_local $p1
              call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
              tee_local $l1
              i32.eqz
              br_if $B4
              get_local $l1
              get_local $p0
              get_local $p1
              get_local $l2
              i32.load
              tee_local $l0
              i32.const -8
              i32.and
              i32.const 4
              i32.const 8
              get_local $l0
              i32.const 3
              i32.and
              select
              i32.sub
              tee_local $l0
              get_local $l0
              get_local $p1
              i32.gt_u
              select
              call $memcpy
              set_local $p1
              get_local $p0
              call $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8
              get_local $p1
              set_local $l0
            end
            get_local $l0
            return
          end
          block $B11
            block $B12
              get_local $l4
              get_local $l1
              i32.sub
              tee_local $p1
              i32.const 16
              i32.ge_u
              br_if $B12
              get_local $l2
              get_local $l3
              i32.const 1
              i32.and
              get_local $l4
              i32.or
              i32.const 2
              i32.or
              i32.store
              get_local $l5
              get_local $l4
              i32.add
              tee_local $p1
              get_local $p1
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              set_local $p1
              i32.const 0
              set_local $l0
              br $B11
            end
            get_local $l2
            get_local $l1
            get_local $l3
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            get_local $l5
            get_local $l1
            i32.add
            tee_local $l0
            get_local $p1
            i32.const 1
            i32.or
            i32.store offset=4
            get_local $l5
            get_local $l4
            i32.add
            tee_local $l1
            get_local $p1
            i32.store
            get_local $l1
            get_local $l1
            i32.load offset=4
            i32.const -2
            i32.and
            i32.store offset=4
          end
          i32.const 0
          get_local $l0
          i32.store offset=2356
          i32.const 0
          get_local $p1
          i32.store offset=2348
          get_local $p0
          return
        end
        get_local $l6
        call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
        br $B0
      end
      i32.const 0
      i32.const 0
      i32.load offset=1948
      i32.const -2
      get_local $l3
      i32.const 3
      i32.shr_u
      i32.rotl
      i32.and
      i32.store offset=1948
    end
    block $B13
      get_local $p1
      i32.const 15
      i32.gt_u
      br_if $B13
      get_local $l2
      get_local $l4
      get_local $l2
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      get_local $l5
      get_local $l4
      i32.add
      tee_local $p1
      get_local $p1
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      get_local $p0
      return
    end
    get_local $l2
    get_local $l1
    get_local $l2
    i32.load
    i32.const 1
    i32.and
    i32.or
    i32.const 2
    i32.or
    i32.store
    get_local $l5
    get_local $l1
    i32.add
    tee_local $l0
    get_local $p1
    i32.const 3
    i32.or
    i32.store offset=4
    get_local $l5
    get_local $l4
    i32.add
    tee_local $l1
    get_local $l1
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4
    get_local $l0
    get_local $p1
    call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755
    get_local $p0)
  (func $<core::fmt::Error_as_core::fmt::Debug>::fmt::h1e2fd851a36a17f2 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    get_local $p1
    i32.load offset=24
    i32.const 1454
    i32.const 5
    get_local $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t5))
  (func $<&'a_T_as_core::fmt::Display>::fmt::hdc0ef8ca37056d26 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    get_local $p0
    i32.load
    get_local $p0
    i32.load offset=4
    get_local $p1
    call $<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8)
  (func $core::panicking::panic_fmt::h29e5105b4d53bc05 (type $t2) (param $p0 i32) (param $p1 i32)
    get_local $p0
    i32.load
    get_local $p0
    i32.load offset=4
    get_local $p0
    i32.load offset=8
    get_local $p0
    i32.const 12
    i32.add
    i32.load
    get_local $p0
    i32.load offset=16
    get_local $p0
    i32.const 20
    i32.add
    i32.load
    get_local $p1
    i32.load
    get_local $p1
    i32.load offset=4
    get_local $p1
    i32.load offset=8
    get_local $p1
    i32.load offset=12
    call $rust_begin_unwind
    unreachable)
  (func $<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    get_global $g0
    i32.const 16
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $p2
    i32.load offset=16
    set_local $l1
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              block $B13
                                block $B14
                                  block $B15
                                    block $B16
                                      block $B17
                                        get_local $p2
                                        i32.load offset=8
                                        tee_local $l2
                                        i32.const 1
                                        i32.ne
                                        br_if $B17
                                        get_local $l1
                                        br_if $B16
                                        br $B4
                                      end
                                      get_local $l1
                                      i32.eqz
                                      br_if $B15
                                    end
                                    get_local $p0
                                    get_local $p1
                                    i32.add
                                    set_local $l3
                                    get_local $p2
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    tee_local $l4
                                    i32.eqz
                                    br_if $B14
                                    get_local $p1
                                    i32.eqz
                                    br_if $B5
                                    get_local $p0
                                    i32.const 1
                                    i32.add
                                    set_local $l5
                                    i32.const 0
                                    set_local $l6
                                    get_local $p0
                                    i32.load8_s
                                    tee_local $l1
                                    i32.const 0
                                    i32.lt_s
                                    br_if $B13
                                    get_local $l1
                                    i32.const 255
                                    i32.and
                                    set_local $l7
                                    br $B8
                                  end
                                  get_local $p2
                                  i32.load offset=24
                                  get_local $p0
                                  get_local $p1
                                  get_local $p2
                                  i32.const 28
                                  i32.add
                                  i32.load
                                  i32.load offset=12
                                  call_indirect (type $t5)
                                  set_local $l1
                                  br $B0
                                end
                                get_local $p1
                                i32.eqz
                                br_if $B12
                                i32.const 0
                                set_local $l8
                                get_local $p0
                                i32.load8_s
                                tee_local $l1
                                i32.const -1
                                i32.gt_s
                                br_if $B7
                                i32.const 0
                                set_local $l8
                                get_local $l3
                                set_local $l5
                                i32.const 0
                                set_local $l4
                                block $B18
                                  get_local $p1
                                  i32.const 1
                                  i32.eq
                                  br_if $B18
                                  get_local $p0
                                  i32.const 2
                                  i32.add
                                  set_local $l5
                                  get_local $p0
                                  i32.const 1
                                  i32.add
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  set_local $l4
                                end
                                get_local $l1
                                i32.const 255
                                i32.and
                                i32.const 224
                                i32.lt_u
                                br_if $B7
                                i32.const 0
                                set_local $l8
                                get_local $l3
                                set_local $l6
                                i32.const 0
                                set_local $l7
                                block $B19
                                  get_local $l5
                                  get_local $l3
                                  i32.eq
                                  br_if $B19
                                  get_local $l5
                                  i32.const 1
                                  i32.add
                                  set_local $l6
                                  get_local $l5
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  set_local $l7
                                end
                                get_local $l1
                                i32.const 255
                                i32.and
                                i32.const 240
                                i32.lt_u
                                br_if $B7
                                get_local $l1
                                i32.const 31
                                i32.and
                                set_local $l5
                                get_local $l4
                                i32.const 255
                                i32.and
                                i32.const 6
                                i32.shl
                                get_local $l7
                                i32.const 255
                                i32.and
                                i32.or
                                set_local $l4
                                i32.const 0
                                set_local $l8
                                i32.const 0
                                set_local $l1
                                block $B20
                                  get_local $l6
                                  get_local $l3
                                  i32.eq
                                  br_if $B20
                                  get_local $l6
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  set_local $l1
                                end
                                get_local $l4
                                i32.const 6
                                i32.shl
                                get_local $l5
                                i32.const 18
                                i32.shl
                                i32.const 1835008
                                i32.and
                                i32.or
                                get_local $l1
                                i32.const 255
                                i32.and
                                i32.or
                                i32.const 1114112
                                i32.ne
                                br_if $B7
                                br $B5
                              end
                              get_local $l3
                              set_local $l8
                              block $B21
                                get_local $p1
                                i32.const 1
                                i32.eq
                                br_if $B21
                                get_local $p0
                                i32.const 1
                                i32.add
                                i32.load8_u
                                i32.const 63
                                i32.and
                                set_local $l6
                                get_local $p0
                                i32.const 2
                                i32.add
                                tee_local $l5
                                set_local $l8
                              end
                              get_local $l1
                              i32.const 31
                              i32.and
                              set_local $l7
                              get_local $l6
                              i32.const 255
                              i32.and
                              set_local $l6
                              get_local $l1
                              i32.const 255
                              i32.and
                              i32.const 224
                              i32.lt_u
                              br_if $B11
                              get_local $l8
                              get_local $l3
                              i32.eq
                              br_if $B10
                              get_local $l8
                              i32.load8_u
                              i32.const 63
                              i32.and
                              set_local $l9
                              get_local $l8
                              i32.const 1
                              i32.add
                              tee_local $l5
                              set_local $l8
                              br $B9
                            end
                            i32.const 0
                            set_local $p1
                            get_local $l2
                            br_if $B4
                            br $B3
                          end
                          get_local $l7
                          i32.const 6
                          i32.shl
                          get_local $l6
                          i32.or
                          set_local $l7
                          br $B8
                        end
                        i32.const 0
                        set_local $l9
                        get_local $l3
                        set_local $l8
                      end
                      get_local $l6
                      i32.const 6
                      i32.shl
                      get_local $l9
                      i32.const 255
                      i32.and
                      i32.or
                      set_local $l6
                      block $B22
                        block $B23
                          block $B24
                            get_local $l1
                            i32.const 255
                            i32.and
                            i32.const 240
                            i32.lt_u
                            br_if $B24
                            get_local $l8
                            get_local $l3
                            i32.eq
                            br_if $B23
                            get_local $l8
                            i32.const 1
                            i32.add
                            set_local $l5
                            get_local $l8
                            i32.load8_u
                            i32.const 63
                            i32.and
                            set_local $l1
                            br $B22
                          end
                          get_local $l6
                          get_local $l7
                          i32.const 12
                          i32.shl
                          i32.or
                          set_local $l7
                          br $B8
                        end
                        i32.const 0
                        set_local $l1
                      end
                      get_local $l6
                      i32.const 6
                      i32.shl
                      get_local $l7
                      i32.const 18
                      i32.shl
                      i32.const 1835008
                      i32.and
                      i32.or
                      get_local $l1
                      i32.const 255
                      i32.and
                      i32.or
                      tee_local $l7
                      i32.const 1114112
                      i32.eq
                      br_if $B5
                    end
                    get_local $l5
                    get_local $p0
                    i32.sub
                    set_local $l1
                    i32.const 0
                    set_local $l6
                    block $B25
                      loop $L26
                        get_local $l6
                        set_local $l8
                        get_local $l1
                        set_local $l6
                        get_local $l5
                        set_local $l1
                        get_local $l4
                        i32.eqz
                        br_if $B25
                        get_local $l3
                        get_local $l1
                        i32.eq
                        br_if $B5
                        get_local $l1
                        i32.eqz
                        br_if $B5
                        get_local $l1
                        i32.const 1
                        i32.add
                        set_local $l5
                        block $B27
                          block $B28
                            get_local $l1
                            i32.load8_s
                            tee_local $l8
                            i32.const 0
                            i32.lt_s
                            br_if $B28
                            get_local $l8
                            i32.const 255
                            i32.and
                            set_local $l7
                            br $B27
                          end
                          block $B29
                            block $B30
                              get_local $l5
                              get_local $l3
                              i32.eq
                              br_if $B30
                              get_local $l5
                              i32.load8_u
                              i32.const 63
                              i32.and
                              set_local $l9
                              get_local $l1
                              i32.const 2
                              i32.add
                              tee_local $l7
                              set_local $l5
                              br $B29
                            end
                            i32.const 0
                            set_local $l9
                            get_local $l3
                            set_local $l7
                          end
                          get_local $l8
                          i32.const 31
                          i32.and
                          set_local $l10
                          get_local $l9
                          i32.const 255
                          i32.and
                          set_local $l9
                          block $B31
                            block $B32
                              block $B33
                                get_local $l8
                                i32.const 255
                                i32.and
                                tee_local $l8
                                i32.const 224
                                i32.lt_u
                                br_if $B33
                                get_local $l7
                                get_local $l3
                                i32.eq
                                br_if $B32
                                get_local $l7
                                i32.load8_u
                                i32.const 63
                                i32.and
                                set_local $l11
                                get_local $l7
                                i32.const 1
                                i32.add
                                tee_local $l5
                                set_local $l7
                                br $B31
                              end
                              get_local $l10
                              i32.const 6
                              i32.shl
                              get_local $l9
                              i32.or
                              set_local $l7
                              br $B27
                            end
                            i32.const 0
                            set_local $l11
                            get_local $l3
                            set_local $l7
                          end
                          get_local $l9
                          i32.const 6
                          i32.shl
                          get_local $l11
                          i32.const 255
                          i32.and
                          i32.or
                          set_local $l9
                          block $B34
                            block $B35
                              block $B36
                                get_local $l8
                                i32.const 240
                                i32.lt_u
                                br_if $B36
                                get_local $l7
                                get_local $l3
                                i32.eq
                                br_if $B35
                                get_local $l7
                                i32.const 1
                                i32.add
                                set_local $l5
                                get_local $l7
                                i32.load8_u
                                i32.const 63
                                i32.and
                                set_local $l8
                                br $B34
                              end
                              get_local $l9
                              get_local $l10
                              i32.const 12
                              i32.shl
                              i32.or
                              set_local $l7
                              br $B27
                            end
                            i32.const 0
                            set_local $l8
                          end
                          get_local $l9
                          i32.const 6
                          i32.shl
                          get_local $l10
                          i32.const 18
                          i32.shl
                          i32.const 1835008
                          i32.and
                          i32.or
                          get_local $l8
                          i32.const 255
                          i32.and
                          i32.or
                          tee_local $l7
                          i32.const 1114112
                          i32.eq
                          br_if $B5
                        end
                        get_local $l4
                        i32.const -1
                        i32.add
                        set_local $l4
                        get_local $l5
                        get_local $l1
                        i32.sub
                        get_local $l6
                        i32.add
                        set_local $l1
                        br $L26
                      end
                    end
                    get_local $l7
                    i32.const 1114112
                    i32.eq
                    br_if $B5
                    get_local $l8
                    i32.eqz
                    br_if $B7
                    get_local $l8
                    get_local $p1
                    i32.eq
                    br_if $B7
                    i32.const 0
                    set_local $l1
                    get_local $l8
                    get_local $p1
                    i32.ge_u
                    br_if $B6
                    get_local $p0
                    get_local $l8
                    i32.add
                    i32.load8_s
                    i32.const -64
                    i32.lt_s
                    br_if $B6
                  end
                  get_local $p0
                  set_local $l1
                end
                get_local $l8
                get_local $p1
                get_local $l1
                select
                set_local $p1
                get_local $l1
                get_local $p0
                get_local $l1
                select
                set_local $p0
              end
              get_local $l2
              i32.eqz
              br_if $B3
            end
            get_local $p2
            i32.const 12
            i32.add
            i32.load
            set_local $l6
            get_local $p1
            i32.eqz
            br_if $B2
            i32.const 0
            set_local $l5
            get_local $p1
            set_local $l4
            get_local $p0
            set_local $l1
            loop $L37
              get_local $l5
              get_local $l1
              i32.load8_u
              i32.const 192
              i32.and
              i32.const 128
              i32.eq
              i32.add
              set_local $l5
              get_local $l1
              i32.const 1
              i32.add
              set_local $l1
              get_local $l4
              i32.const -1
              i32.add
              tee_local $l4
              br_if $L37
              br $B1
            end
          end
          get_local $p2
          i32.load offset=24
          get_local $p0
          get_local $p1
          get_local $p2
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type $t5)
          set_local $l1
          br $B0
        end
        i32.const 0
        set_local $l5
      end
      block $B38
        block $B39
          block $B40
            block $B41
              get_local $p1
              get_local $l5
              i32.sub
              get_local $l6
              i32.ge_u
              br_if $B41
              i32.const 0
              set_local $l5
              block $B42
                get_local $p1
                i32.eqz
                br_if $B42
                i32.const 0
                set_local $l5
                get_local $p1
                set_local $l4
                get_local $p0
                set_local $l1
                loop $L43
                  get_local $l5
                  get_local $l1
                  i32.load8_u
                  i32.const 192
                  i32.and
                  i32.const 128
                  i32.eq
                  i32.add
                  set_local $l5
                  get_local $l1
                  i32.const 1
                  i32.add
                  set_local $l1
                  get_local $l4
                  i32.const -1
                  i32.add
                  tee_local $l4
                  br_if $L43
                end
              end
              get_local $l5
              get_local $p1
              i32.sub
              get_local $l6
              i32.add
              set_local $l6
              i32.const 0
              get_local $p2
              i32.load8_u offset=48
              tee_local $l1
              get_local $l1
              i32.const 3
              i32.eq
              select
              i32.const 3
              i32.and
              tee_local $l1
              i32.eqz
              br_if $B40
              get_local $l1
              i32.const 2
              i32.eq
              br_if $B39
              i32.const 0
              set_local $l8
              br $B38
            end
            get_local $p2
            i32.load offset=24
            get_local $p0
            get_local $p1
            get_local $p2
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type $t5)
            set_local $l1
            br $B0
          end
          get_local $l6
          set_local $l8
          i32.const 0
          set_local $l6
          br $B38
        end
        get_local $l6
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        set_local $l8
        get_local $l6
        i32.const 1
        i32.shr_u
        set_local $l6
      end
      get_local $l0
      i32.const 0
      i32.store offset=12
      block $B44
        block $B45
          get_local $p2
          i32.load offset=4
          tee_local $l1
          i32.const 127
          i32.gt_u
          br_if $B45
          get_local $l0
          get_local $l1
          i32.store8 offset=12
          i32.const 1
          set_local $l4
          br $B44
        end
        block $B46
          get_local $l1
          i32.const 2047
          i32.gt_u
          br_if $B46
          get_local $l0
          get_local $l1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          get_local $l0
          get_local $l1
          i32.const 6
          i32.shr_u
          i32.const 31
          i32.and
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          set_local $l4
          br $B44
        end
        block $B47
          get_local $l1
          i32.const 65535
          i32.gt_u
          br_if $B47
          get_local $l0
          get_local $l1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          get_local $l0
          get_local $l1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          get_local $l0
          get_local $l1
          i32.const 12
          i32.shr_u
          i32.const 15
          i32.and
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          set_local $l4
          br $B44
        end
        get_local $l0
        get_local $l1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8 offset=12
        get_local $l0
        get_local $l1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=15
        get_local $l0
        get_local $l1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        get_local $l0
        get_local $l1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        i32.const 4
        set_local $l4
      end
      get_local $p2
      i32.load offset=24
      set_local $l5
      i32.const -1
      set_local $l1
      get_local $p2
      i32.const 28
      i32.add
      i32.load
      tee_local $l3
      i32.const 12
      i32.add
      set_local $p2
      block $B48
        block $B49
          block $B50
            loop $L51
              get_local $l1
              i32.const 1
              i32.add
              tee_local $l1
              get_local $l6
              i32.ge_u
              br_if $B50
              get_local $l5
              get_local $l0
              i32.const 12
              i32.add
              get_local $l4
              get_local $p2
              i32.load
              call_indirect (type $t5)
              i32.eqz
              br_if $L51
              br $B49
            end
          end
          get_local $l5
          get_local $p0
          get_local $p1
          get_local $l3
          i32.const 12
          i32.add
          i32.load
          tee_local $p2
          call_indirect (type $t5)
          br_if $B49
          i32.const -1
          set_local $l1
          loop $L52
            get_local $l1
            i32.const 1
            i32.add
            tee_local $l1
            get_local $l8
            i32.ge_u
            br_if $B48
            get_local $l5
            get_local $l0
            i32.const 12
            i32.add
            get_local $l4
            get_local $p2
            call_indirect (type $t5)
            i32.eqz
            br_if $L52
          end
        end
        i32.const 1
        set_local $l1
        br $B0
      end
      i32.const 0
      set_local $l1
    end
    get_local $l0
    i32.const 16
    i32.add
    set_global $g0
    get_local $l1)
  (func $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_char::h7ce04ba63be07a5d (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l0 i32) (local $l1 i32)
    get_global $g0
    i32.const 16
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $p0
    i32.load
    set_local $p0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                get_local $p1
                i32.const 128
                i32.ge_u
                br_if $B5
                block $B6
                  get_local $p0
                  i32.load offset=8
                  tee_local $l1
                  get_local $p0
                  i32.load offset=4
                  i32.ne
                  br_if $B6
                  get_local $p0
                  get_local $l1
                  i32.const 1
                  call $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b
                  tee_local $l1
                  i32.const 255
                  i32.and
                  i32.const 2
                  i32.ne
                  br_if $B2
                  get_local $p0
                  i32.const 8
                  i32.add
                  i32.load
                  set_local $l1
                end
                get_local $p0
                i32.load
                get_local $l1
                i32.add
                get_local $p1
                i32.store8
                get_local $p0
                i32.const 8
                i32.add
                tee_local $p0
                get_local $p0
                i32.load
                i32.const 1
                i32.add
                i32.store
                br $B4
              end
              get_local $l0
              i32.const 0
              i32.store offset=12
              block $B7
                block $B8
                  get_local $p1
                  i32.const 2048
                  i32.ge_u
                  br_if $B8
                  get_local $l0
                  get_local $p1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  get_local $l0
                  get_local $p1
                  i32.const 6
                  i32.shr_u
                  i32.const 31
                  i32.and
                  i32.const 192
                  i32.or
                  i32.store8 offset=12
                  i32.const 2
                  set_local $p1
                  br $B7
                end
                block $B9
                  get_local $p1
                  i32.const 65535
                  i32.gt_u
                  br_if $B9
                  get_local $l0
                  get_local $p1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  get_local $l0
                  get_local $p1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  get_local $l0
                  get_local $p1
                  i32.const 12
                  i32.shr_u
                  i32.const 15
                  i32.and
                  i32.const 224
                  i32.or
                  i32.store8 offset=12
                  i32.const 3
                  set_local $p1
                  br $B7
                end
                get_local $l0
                get_local $p1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=12
                get_local $l0
                get_local $p1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=15
                get_local $l0
                get_local $p1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                get_local $l0
                get_local $p1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                i32.const 4
                set_local $p1
              end
              get_local $p0
              get_local $p0
              i32.load offset=8
              get_local $p1
              call $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b
              tee_local $l1
              i32.const 255
              i32.and
              i32.const 2
              i32.ne
              br_if $B3
              get_local $p0
              i32.const 8
              i32.add
              tee_local $l1
              get_local $l1
              i32.load
              tee_local $l1
              get_local $p1
              i32.add
              i32.store
              get_local $l1
              get_local $p0
              i32.load
              i32.add
              get_local $l0
              i32.const 12
              i32.add
              get_local $p1
              call $memcpy
              drop
            end
            get_local $l0
            i32.const 16
            i32.add
            set_global $g0
            i32.const 0
            return
          end
          get_local $l1
          i32.const 1
          i32.and
          i32.eqz
          br_if $B1
          i32.const 1704
          call $core::panicking::panic::haf7d7779169c0743
          unreachable
        end
        get_local $l1
        i32.const 1
        i32.and
        br_if $B0
      end
      call $alloc::raw_vec::capacity_overflow::h034ca36241ac64a2
      unreachable
    end
    i32.const 1704
    call $core::panicking::panic::haf7d7779169c0743
    unreachable)
  (func $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_fmt::h366fb92f1c6d804e (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l0 i32)
    get_global $g0
    i32.const 32
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $l0
    get_local $p0
    i32.load
    i32.store offset=4
    get_local $l0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    get_local $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    get_local $l0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    get_local $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    get_local $l0
    get_local $p1
    i64.load align=4
    i64.store offset=8
    get_local $l0
    i32.const 4
    i32.add
    i32.const 1680
    get_local $l0
    i32.const 8
    i32.add
    call $core::fmt::write::h533d40856339be39
    set_local $p1
    get_local $l0
    i32.const 32
    i32.add
    set_global $g0
    get_local $p1)
  (func $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_str::hc67b7914ad867b23 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32)
    block $B0
      get_local $p0
      i32.load
      tee_local $p0
      get_local $p0
      i32.load offset=8
      get_local $p2
      call $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b
      tee_local $l0
      i32.const 255
      i32.and
      i32.const 2
      i32.ne
      br_if $B0
      get_local $p0
      i32.const 8
      i32.add
      tee_local $l0
      get_local $l0
      i32.load
      tee_local $l0
      get_local $p2
      i32.add
      i32.store
      get_local $l0
      get_local $p0
      i32.load
      i32.add
      get_local $p1
      get_local $p2
      call $memcpy
      drop
      i32.const 0
      return
    end
    block $B1
      get_local $l0
      i32.const 1
      i32.and
      br_if $B1
      call $alloc::raw_vec::capacity_overflow::h034ca36241ac64a2
      unreachable
    end
    i32.const 1704
    call $core::panicking::panic::haf7d7779169c0743
    unreachable)
  (func $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l0 i32)
    get_global $g0
    i32.const 48
    i32.sub
    tee_local $l0
    set_global $g0
    get_local $l0
    get_local $p2
    i32.store offset=4
    get_local $l0
    get_local $p1
    i32.store
    get_local $l0
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 4
    i32.store
    get_local $l0
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local $l0
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local $l0
    i32.const 4
    i32.store offset=36
    get_local $l0
    i32.const 1784
    i32.store offset=8
    get_local $l0
    i32.const 2
    i32.store offset=12
    get_local $l0
    i32.const 1248
    i32.store offset=16
    get_local $l0
    get_local $l0
    i32.const 4
    i32.add
    i32.store offset=32
    get_local $l0
    get_local $l0
    i32.store offset=40
    get_local $l0
    get_local $l0
    i32.const 32
    i32.add
    i32.store offset=24
    get_local $l0
    i32.const 8
    i32.add
    get_local $p0
    call $core::panicking::panic_fmt::h29e5105b4d53bc05
    unreachable)
  (func $core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    get_global $g0
    i32.const 80
    i32.sub
    tee_local $l0
    set_global $g0
    i32.const 39
    set_local $l1
    block $B0
      block $B1
        get_local $p0
        i32.load
        tee_local $p0
        i32.const 10000
        i32.lt_u
        br_if $B1
        i32.const 39
        set_local $l1
        loop $L2
          get_local $l0
          i32.const 9
          i32.add
          get_local $l1
          i32.add
          tee_local $l2
          i32.const -4
          i32.add
          get_local $p0
          get_local $p0
          i32.const 10000
          i32.div_u
          tee_local $l3
          i32.const -10000
          i32.mul
          i32.add
          tee_local $l4
          i32.const 100
          i32.div_u
          tee_local $l5
          i32.const 1
          i32.shl
          i32.const 1461
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          get_local $l2
          i32.const -2
          i32.add
          get_local $l4
          get_local $l5
          i32.const -100
          i32.mul
          i32.add
          i32.const 1
          i32.shl
          i32.const 1461
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          get_local $l1
          i32.const -4
          i32.add
          set_local $l1
          get_local $p0
          i32.const 99999999
          i32.gt_u
          set_local $l2
          get_local $l3
          set_local $p0
          get_local $l2
          br_if $L2
          br $B0
        end
      end
      get_local $p0
      set_local $l3
    end
    block $B3
      block $B4
        get_local $l3
        i32.const 100
        i32.lt_s
        br_if $B4
        get_local $l0
        i32.const 9
        i32.add
        get_local $l1
        i32.const -2
        i32.add
        tee_local $l1
        i32.add
        get_local $l3
        get_local $l3
        i32.const 100
        i32.div_u
        tee_local $p0
        i32.const -100
        i32.mul
        i32.add
        i32.const 1
        i32.shl
        i32.const 1461
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br $B3
      end
      get_local $l3
      set_local $p0
    end
    block $B5
      block $B6
        get_local $p0
        i32.const 9
        i32.gt_s
        br_if $B6
        get_local $l0
        i32.const 9
        i32.add
        get_local $l1
        i32.const -1
        i32.add
        tee_local $l1
        i32.add
        tee_local $l6
        get_local $p0
        i32.const 48
        i32.add
        i32.store8
        br $B5
      end
      get_local $l0
      i32.const 9
      i32.add
      get_local $l1
      i32.const -2
      i32.add
      tee_local $l1
      i32.add
      tee_local $l6
      get_local $p0
      i32.const 1
      i32.shl
      i32.const 1461
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    get_local $l0
    i32.const 0
    i32.store offset=52
    get_local $l0
    i32.const 1460
    i32.store offset=48
    get_local $l0
    i32.const 1114112
    i32.store offset=56
    i32.const 39
    get_local $l1
    i32.sub
    tee_local $l5
    set_local $l1
    block $B7
      get_local $p1
      i32.load
      tee_local $p0
      i32.const 1
      i32.and
      i32.eqz
      br_if $B7
      get_local $l0
      i32.const 43
      i32.store offset=56
      get_local $l5
      i32.const 1
      i32.add
      set_local $l1
    end
    get_local $l0
    get_local $p0
    i32.const 2
    i32.shr_u
    i32.const 1
    i32.and
    i32.store8 offset=63
    get_local $p1
    i32.load offset=8
    set_local $l3
    get_local $l0
    get_local $l0
    i32.const 63
    i32.add
    i32.store offset=68
    get_local $l0
    get_local $l0
    i32.const 56
    i32.add
    i32.store offset=64
    get_local $l0
    get_local $l0
    i32.const 48
    i32.add
    i32.store offset=72
    block $B8
      block $B9
        block $B10
          block $B11
            block $B12
              block $B13
                block $B14
                  block $B15
                    block $B16
                      block $B17
                        block $B18
                          block $B19
                            get_local $l3
                            i32.const 1
                            i32.ne
                            br_if $B19
                            get_local $p1
                            i32.const 12
                            i32.add
                            i32.load
                            tee_local $l3
                            get_local $l1
                            i32.le_u
                            br_if $B18
                            get_local $p0
                            i32.const 8
                            i32.and
                            br_if $B17
                            get_local $l3
                            get_local $l1
                            i32.sub
                            set_local $l2
                            i32.const 1
                            get_local $p1
                            i32.load8_u offset=48
                            tee_local $p0
                            get_local $p0
                            i32.const 3
                            i32.eq
                            select
                            i32.const 3
                            i32.and
                            tee_local $p0
                            i32.eqz
                            br_if $B16
                            get_local $p0
                            i32.const 2
                            i32.eq
                            br_if $B15
                            i32.const 0
                            set_local $l7
                            br $B14
                          end
                          get_local $l0
                          i32.const 64
                          i32.add
                          get_local $p1
                          call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
                          br_if $B10
                          get_local $p1
                          i32.load offset=24
                          get_local $l6
                          get_local $l5
                          get_local $p1
                          i32.const 28
                          i32.add
                          i32.load
                          i32.load offset=12
                          call_indirect (type $t5)
                          set_local $p0
                          br $B8
                        end
                        get_local $l0
                        i32.const 64
                        i32.add
                        get_local $p1
                        call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
                        br_if $B10
                        get_local $p1
                        i32.load offset=24
                        get_local $l6
                        get_local $l5
                        get_local $p1
                        i32.const 28
                        i32.add
                        i32.load
                        i32.load offset=12
                        call_indirect (type $t5)
                        set_local $p0
                        br $B8
                      end
                      get_local $p1
                      i32.const 1
                      i32.store8 offset=48
                      get_local $p1
                      i32.const 48
                      i32.store offset=4
                      get_local $l0
                      i32.const 64
                      i32.add
                      get_local $p1
                      call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
                      br_if $B10
                      get_local $l0
                      i32.const 48
                      i32.store offset=76
                      get_local $l3
                      get_local $l1
                      i32.sub
                      set_local $l1
                      get_local $p1
                      i32.load offset=24
                      set_local $l3
                      i32.const -1
                      set_local $p0
                      get_local $p1
                      i32.const 28
                      i32.add
                      i32.load
                      tee_local $l4
                      i32.const 12
                      i32.add
                      set_local $l2
                      loop $L20
                        get_local $p0
                        i32.const 1
                        i32.add
                        tee_local $p0
                        get_local $l1
                        i32.ge_u
                        br_if $B13
                        get_local $l3
                        get_local $l0
                        i32.const 76
                        i32.add
                        i32.const 1
                        get_local $l2
                        i32.load
                        call_indirect (type $t5)
                        i32.eqz
                        br_if $L20
                        br $B10
                      end
                    end
                    get_local $l2
                    set_local $l7
                    i32.const 0
                    set_local $l2
                    br $B14
                  end
                  get_local $l2
                  i32.const 1
                  i32.add
                  i32.const 1
                  i32.shr_u
                  set_local $l7
                  get_local $l2
                  i32.const 1
                  i32.shr_u
                  set_local $l2
                end
                get_local $l0
                i32.const 0
                i32.store offset=76
                block $B21
                  get_local $p1
                  i32.load offset=4
                  tee_local $p0
                  i32.const 127
                  i32.gt_u
                  br_if $B21
                  get_local $l0
                  get_local $p0
                  i32.store8 offset=76
                  i32.const 1
                  set_local $l3
                  br $B11
                end
                get_local $p0
                i32.const 2047
                i32.gt_u
                br_if $B12
                get_local $l0
                get_local $p0
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=77
                get_local $l0
                get_local $p0
                i32.const 6
                i32.shr_u
                i32.const 31
                i32.and
                i32.const 192
                i32.or
                i32.store8 offset=76
                i32.const 2
                set_local $l3
                br $B11
              end
              get_local $l3
              get_local $l6
              get_local $l5
              get_local $l4
              i32.const 12
              i32.add
              i32.load
              call_indirect (type $t5)
              br_if $B10
              br $B9
            end
            block $B22
              get_local $p0
              i32.const 65535
              i32.gt_u
              br_if $B22
              get_local $l0
              get_local $p0
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=78
              get_local $l0
              get_local $p0
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=77
              get_local $l0
              get_local $p0
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 224
              i32.or
              i32.store8 offset=76
              i32.const 3
              set_local $l3
              br $B11
            end
            get_local $l0
            get_local $p0
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=76
            get_local $l0
            get_local $p0
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=79
            get_local $l0
            get_local $p0
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=77
            get_local $l0
            get_local $p0
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=78
            i32.const 4
            set_local $l3
          end
          get_local $p1
          i32.load offset=24
          set_local $l1
          i32.const -1
          set_local $p0
          get_local $p1
          i32.const 28
          i32.add
          i32.load
          tee_local $l8
          i32.const 12
          i32.add
          set_local $l4
          block $B23
            loop $L24
              get_local $p0
              i32.const 1
              i32.add
              tee_local $p0
              get_local $l2
              i32.ge_u
              br_if $B23
              get_local $l1
              get_local $l0
              i32.const 76
              i32.add
              get_local $l3
              get_local $l4
              i32.load
              call_indirect (type $t5)
              i32.eqz
              br_if $L24
              br $B10
            end
          end
          get_local $l0
          i32.const 64
          i32.add
          get_local $p1
          call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
          br_if $B10
          get_local $l1
          get_local $l6
          get_local $l5
          get_local $l8
          i32.const 12
          i32.add
          i32.load
          tee_local $l2
          call_indirect (type $t5)
          br_if $B10
          i32.const -1
          set_local $p0
          loop $L25
            get_local $p0
            i32.const 1
            i32.add
            tee_local $p0
            get_local $l7
            i32.ge_u
            br_if $B9
            get_local $l1
            get_local $l0
            i32.const 76
            i32.add
            get_local $l3
            get_local $l2
            call_indirect (type $t5)
            i32.eqz
            br_if $L25
          end
        end
        i32.const 1
        set_local $p0
        br $B8
      end
      i32.const 0
      set_local $p0
    end
    get_local $l0
    i32.const 80
    i32.add
    set_global $g0
    get_local $p0)
  (func $core::fmt::ArgumentV1::show_usize::h31ed957c3096bec9 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    get_local $p0
    get_local $p1
    call $core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01)
  (func $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92 (type $t3) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    get_global $g0
    i32.const 16
    i32.sub
    tee_local $l0
    set_global $g0
    block $B0
      block $B1
        get_local $p0
        i32.load
        i32.load
        tee_local $l1
        i32.const 1114112
        i32.eq
        br_if $B1
        get_local $p1
        i32.const 28
        i32.add
        i32.load
        set_local $l2
        get_local $p1
        i32.load offset=24
        set_local $l3
        get_local $l0
        i32.const 0
        i32.store offset=12
        block $B2
          block $B3
            get_local $l1
            i32.const 127
            i32.gt_u
            br_if $B3
            get_local $l0
            get_local $l1
            i32.store8 offset=12
            i32.const 1
            set_local $l4
            br $B2
          end
          block $B4
            get_local $l1
            i32.const 2047
            i32.gt_u
            br_if $B4
            get_local $l0
            get_local $l1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            get_local $l0
            get_local $l1
            i32.const 6
            i32.shr_u
            i32.const 31
            i32.and
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            set_local $l4
            br $B2
          end
          block $B5
            get_local $l1
            i32.const 65535
            i32.gt_u
            br_if $B5
            get_local $l0
            get_local $l1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            get_local $l0
            get_local $l1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            get_local $l0
            get_local $l1
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            set_local $l4
            br $B2
          end
          get_local $l0
          get_local $l1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          get_local $l0
          get_local $l1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          get_local $l0
          get_local $l1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          get_local $l0
          get_local $l1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          i32.const 4
          set_local $l4
        end
        i32.const 1
        set_local $l1
        get_local $l3
        get_local $l0
        i32.const 12
        i32.add
        get_local $l4
        get_local $l2
        i32.load offset=12
        call_indirect (type $t5)
        br_if $B0
      end
      block $B6
        get_local $p0
        i32.load offset=4
        i32.load8_u
        i32.eqz
        br_if $B6
        get_local $p1
        i32.load offset=24
        get_local $p0
        i32.load offset=8
        tee_local $p0
        i32.load
        get_local $p0
        i32.load offset=4
        get_local $p1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t5)
        set_local $l1
        br $B0
      end
      i32.const 0
      set_local $l1
    end
    get_local $l0
    i32.const 16
    i32.add
    set_global $g0
    get_local $l1)
  (func $memcpy (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32)
    block $B0
      get_local $p2
      i32.eqz
      br_if $B0
      get_local $p0
      set_local $l0
      loop $L1
        get_local $l0
        get_local $p1
        i32.load8_u
        i32.store8
        get_local $p1
        i32.const 1
        i32.add
        set_local $p1
        get_local $l0
        i32.const 1
        i32.add
        set_local $l0
        get_local $p2
        i32.const -1
        i32.add
        tee_local $p2
        br_if $L1
      end
    end
    get_local $p0)
  (table $T0 10 10 anyfunc)
  (memory $memory (export "memory") 17)
  (global $g0 (mut i32) (i32.const 1050992))
  (elem (i32.const 1) $<&'a_T_as_core::fmt::Display>::fmt::h10d15eeb4044458d $<core::fmt::Error_as_core::fmt::Debug>::fmt::h1e2fd851a36a17f2 $<&'a_T_as_core::fmt::Display>::fmt::hdc0ef8ca37056d26 $core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01 $core::fmt::ArgumentV1::show_usize::h31ed957c3096bec9 $core::ptr::drop_in_place::h2745c3a200e8c575 $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_str::hc67b7914ad867b23 $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_char::h7ce04ba63be07a5d $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_fmt::h366fb92f1c6d804e)
  (data (i32.const 1024) "Hello, !invalid malloc request\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00internal error: entered unreachable codeliballoc/raw_vec.rscapacity overflowa formatting trait implementation returned an errorlibcore/result.rs: \00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00index out of bounds: the len is  but the index is \00\00\00\00\00\00libcore/fmt/mod.rscalled `Option::unwrap()` on a `None` valuelibcore/option.rsError\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
  (data (i32.const 1664) "\00\04\00\00\07\00\00\00\07\04\00\00\01\00\00\00\06\00\00\00\04\00\00\00\04\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00L\04\00\00(\00\00\00t\04\00\00\13\00\00\00\f3\01\00\00\1e\00\00\00\87\04\00\00\11\00\00\00t\04\00\00\13\00\00\00\ee\02\00\00\05\00\00\00\b4\05\00\00\00\00\00\00\dc\04\00\00\02\00\00\00\cb\04\00\00\11\00\00\00\b1\03\00\00\05\00\00\00(\05\00\00 \00\00\00H\05\00\00\12\00\00\00`\05\00\00\12\00\00\00W\04\00\00\11\00\00\00r\05\00\00+\00\00\00\9d\05\00\00\11\00\00\00Y\01\00\00\15\00\00\00`\05\00\00\12\00\00\00K\04\00\00(\00\00\00")
  (data (i32.const 1856) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
