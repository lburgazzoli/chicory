(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (result i64)))
  (type (;4;) (func (result f32)))
  (type (;5;) (func (result f64)))
  (type (;6;) (func (result f64 f64)))
  (type (;7;) (func (result i32 i64)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (func (;0;) (type 1))
  (func (;1;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      i32.ctz
      drop
    end)
  (func (;2;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      i64.ctz
      drop
    end)
  (func (;3;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      f32.neg
      drop
    end)
  (func (;4;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      f64.neg
      drop
    end)
  (func (;5;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      i32.add
      drop
    end)
  (func (;6;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      i64.add
      drop
    end)
  (func (;7;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      f32.add
      drop
    end)
  (func (;8;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      f64.add
      drop
    end)
  (func (;9;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 1
      br 0 (;@1;)
      i32.ctz
    end)
  (func (;10;) (type 3) (result i64)
    block (result i64)  ;; label = @1
      i64.const 2
      br 0 (;@1;)
      i64.ctz
    end)
  (func (;11;) (type 4) (result f32)
    block (result f32)  ;; label = @1
      f32.const 0x1.8p+1 (;=3;)
      br 0 (;@1;)
      f32.neg
    end)
  (func (;12;) (type 5) (result f64)
    block (result f64)  ;; label = @1
      f64.const 0x1p+2 (;=4;)
      br 0 (;@1;)
      f64.neg
    end)
  (func (;13;) (type 6) (result f64 f64)
    block (result f64 f64)  ;; label = @1
      f64.const 0x1p+2 (;=4;)
      f64.const 0x1.4p+2 (;=5;)
      br 0 (;@1;)
      f64.add
      f64.const 0x1.8p+2 (;=6;)
    end)
  (func (;14;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      call 0
    end)
  (func (;15;) (type 1)
    block  ;; label = @1
      call 0
      br 0 (;@1;)
      call 0
    end)
  (func (;16;) (type 1)
    block  ;; label = @1
      nop
      call 0
      br 0 (;@1;)
    end)
  (func (;17;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      nop
      call 0
      i32.const 2
      br 0 (;@1;)
    end)
  (func (;18;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      loop (result i32)  ;; label = @2
        i32.const 3
        br 1 (;@1;)
        i32.const 2
      end
    end)
  (func (;19;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      loop (result i32)  ;; label = @2
        call 0
        i32.const 4
        br 1 (;@1;)
        i32.const 2
      end
    end)
  (func (;20;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      loop (result i32)  ;; label = @2
        nop
        call 0
        i32.const 5
        br 1 (;@1;)
      end
    end)
  (func (;21;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 9
      br 0 (;@1;)
      br 0 (;@1;)
    end)
  (func (;22;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      br_if 0 (;@1;)
    end)
  (func (;23;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 8
      br 0 (;@1;)
      i32.const 1
      br_if 0 (;@1;)
      drop
      i32.const 7
    end)
  (func (;24;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 6
      i32.const 9
      br 0 (;@1;)
      br_if 0 (;@1;)
      drop
      i32.const 7
    end)
  (func (;25;) (type 1)
    block  ;; label = @1
      br 0 (;@1;)
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end)
  (func (;26;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 10
      br 0 (;@1;)
      i32.const 1
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
      i32.const 7
    end)
  (func (;27;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 6
      i32.const 11
      br 0 (;@1;)
      br_table 0 (;@1;) 0 (;@1;)
      i32.const 7
    end)
  (func (;28;) (type 3) (result i64)
    block (result i64)  ;; label = @1
      i64.const 7
      br 0 (;@1;)
      return
    end)
  (func (;29;) (type 7) (result i32 i64)
    i32.const 2
    block (result i64)  ;; label = @1
      i32.const 1
      i64.const 7
      br 0 (;@1;)
      return
    end)
  (func (;30;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 2
      br 0 (;@1;)
      if (result i32)  ;; label = @2
        i32.const 0
      else
        i32.const 1
      end
    end)
  (func (;31;) (type 8) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      if (result i32)  ;; label = @2
        i32.const 3
        br 1 (;@1;)
      else
        local.get 1
      end
    end)
  (func (;32;) (type 8) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      if (result i32)  ;; label = @2
        local.get 1
      else
        i32.const 4
        br 1 (;@1;)
      end
    end)
  (func (;33;) (type 8) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      i32.const 5
      br 0 (;@1;)
      local.get 0
      local.get 1
      select
    end)
  (func (;34;) (type 8) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.const 6
      br 0 (;@1;)
      local.get 1
      select
    end)
  (func (;35;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 0
      i32.const 1
      i32.const 7
      br 0 (;@1;)
      select
    end)
  (func (;36;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 8
      br 0 (;@1;)
      select
    end)
  (func (;37;) (type 0) (param i32 i32 i32) (result i32)
    i32.const -1)
  (func (;38;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 12
      br 0 (;@1;)
      i32.const 2
      i32.const 3
      call 37
    end)
  (func (;39;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 1
      i32.const 13
      br 0 (;@1;)
      i32.const 3
      call 37
    end)
  (func (;40;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 1
      i32.const 2
      i32.const 14
      br 0 (;@1;)
      call 37
    end)
  (func (;41;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 15
      br 0 (;@1;)
      call 37
    end)
  (func (;42;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 20
      br 0 (;@1;)
      i32.const 1
      i32.const 2
      i32.const 3
      call_indirect (type 0)
    end)
  (func (;43;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 0
      i32.const 21
      br 0 (;@1;)
      i32.const 2
      i32.const 3
      call_indirect (type 0)
    end)
  (func (;44;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 0
      i32.const 1
      i32.const 22
      br 0 (;@1;)
      i32.const 3
      call_indirect (type 0)
    end)
  (func (;45;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 0
      i32.const 1
      i32.const 2
      i32.const 23
      br 0 (;@1;)
      call_indirect (type 0)
    end)
  (func (;46;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 24
      br 0 (;@1;)
      call_indirect (type 0)
    end)
  (func (;47;) (type 2) (result i32)
    (local f32)
    block (result i32)  ;; label = @1
      i32.const 17
      br 0 (;@1;)
      local.set 0
      i32.const -1
    end)
  (func (;48;) (type 2) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      i32.const 1
      br 0 (;@1;)
      local.tee 0
    end)
  (func (;49;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 1
      br 0 (;@1;)
      global.set 0
    end)
  (func (;50;) (type 4) (result f32)
    block (result f32)  ;; label = @1
      f32.const 0x1.b33334p+0 (;=1.7;)
      br 0 (;@1;)
      f32.load
    end)
  (func (;51;) (type 3) (result i64)
    block (result i64)  ;; label = @1
      i64.const 30
      br 0 (;@1;)
      i64.load8_s
    end)
  (func (;52;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 30
      br 0 (;@1;)
      f64.const 0x1.cp+2 (;=7;)
      f64.store
      i32.const -1
    end)
  (func (;53;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 2
      i32.const 31
      br 0 (;@1;)
      i64.store
      i32.const -1
    end)
  (func (;54;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 32
      br 0 (;@1;)
      i64.store
      i32.const -1
    end)
  (func (;55;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 32
      br 0 (;@1;)
      i32.const 7
      i32.store8
      i32.const -1
    end)
  (func (;56;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 2
      i32.const 33
      br 0 (;@1;)
      i64.store16
      i32.const -1
    end)
  (func (;57;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 34
      br 0 (;@1;)
      i64.store16
      i32.const -1
    end)
  (func (;58;) (type 4) (result f32)
    block (result f32)  ;; label = @1
      f32.const 0x1.b33334p+1 (;=3.4;)
      br 0 (;@1;)
      f32.neg
    end)
  (func (;59;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 3
      br 0 (;@1;)
      i32.const 10
      i32.add
    end)
  (func (;60;) (type 3) (result i64)
    block (result i64)  ;; label = @1
      i64.const 10
      i64.const 45
      br 0 (;@1;)
      i64.sub
    end)
  (func (;61;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 46
      br 0 (;@1;)
      i32.add
    end)
  (func (;62;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 44
      br 0 (;@1;)
      i32.eqz
    end)
  (func (;63;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 43
      br 0 (;@1;)
      f64.const 0x1.4p+3 (;=10;)
      f64.le
    end)
  (func (;64;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      f32.const 0x1.4p+3 (;=10;)
      i32.const 42
      br 0 (;@1;)
      f32.ne
    end)
  (func (;65;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 44
      br 0 (;@1;)
      f64.le
    end)
  (func (;66;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 41
      br 0 (;@1;)
      i32.wrap_i64
    end)
  (func (;67;) (type 2) (result i32)
    block (result i32)  ;; label = @1
      i32.const 40
      br 0 (;@1;)
      memory.grow
    end)
  (func (;68;) (type 2) (result i32)
    i32.const 1
    block (result i32)  ;; label = @1
      call 0
      i32.const 4
      i32.const 8
      br 0 (;@1;)
      i32.add
    end
    i32.add)
  (func (;69;) (type 2) (result i32)
    i32.const 1
    block (result i32)  ;; label = @1
      i32.const 2
      drop
      block (result i32)  ;; label = @2
        i32.const 4
        drop
        i32.const 8
        br 1 (;@1;)
        br 0 (;@2;)
      end
      drop
      i32.const 16
    end
    i32.add)
  (func (;70;) (type 2) (result i32)
    i32.const 1
    block (result i32)  ;; label = @1
      i32.const 2
      drop
      block (result i32)  ;; label = @2
        i32.const 4
        drop
        i32.const 8
        br 1 (;@1;)
        i32.const 1
        br_if 0 (;@2;)
        drop
        i32.const 32
      end
      drop
      i32.const 16
    end
    i32.add)
  (func (;71;) (type 2) (result i32)
    i32.const 1
    block (result i32)  ;; label = @1
      i32.const 2
      drop
      i32.const 4
      i32.const 8
      br 0 (;@1;)
      br_if 0 (;@1;)
      drop
      i32.const 16
    end
    i32.add)
  (func (;72;) (type 2) (result i32)
    i32.const 1
    block (result i32)  ;; label = @1
      i32.const 2
      drop
      block (result i32)  ;; label = @2
        i32.const 4
        drop
        i32.const 8
        br 1 (;@1;)
        i32.const 1
        br_table 0 (;@2;)
      end
      drop
      i32.const 16
    end
    i32.add)
  (func (;73;) (type 2) (result i32)
    i32.const 1
    block (result i32)  ;; label = @1
      i32.const 2
      drop
      i32.const 4
      i32.const 8
      br 0 (;@1;)
      br_table 0 (;@1;)
      i32.const 16
    end
    i32.add)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 10))
  (export "type-i32" (func 1))
  (export "type-i64" (func 2))
  (export "type-f32" (func 3))
  (export "type-f64" (func 4))
  (export "type-i32-i32" (func 5))
  (export "type-i64-i64" (func 6))
  (export "type-f32-f32" (func 7))
  (export "type-f64-f64" (func 8))
  (export "type-i32-value" (func 9))
  (export "type-i64-value" (func 10))
  (export "type-f32-value" (func 11))
  (export "type-f64-value" (func 12))
  (export "type-f64-f64-value" (func 13))
  (export "as-block-first" (func 14))
  (export "as-block-mid" (func 15))
  (export "as-block-last" (func 16))
  (export "as-block-value" (func 17))
  (export "as-loop-first" (func 18))
  (export "as-loop-mid" (func 19))
  (export "as-loop-last" (func 20))
  (export "as-br-value" (func 21))
  (export "as-br_if-cond" (func 22))
  (export "as-br_if-value" (func 23))
  (export "as-br_if-value-cond" (func 24))
  (export "as-br_table-index" (func 25))
  (export "as-br_table-value" (func 26))
  (export "as-br_table-value-index" (func 27))
  (export "as-return-value" (func 28))
  (export "as-return-values" (func 29))
  (export "as-if-cond" (func 30))
  (export "as-if-then" (func 31))
  (export "as-if-else" (func 32))
  (export "as-select-first" (func 33))
  (export "as-select-second" (func 34))
  (export "as-select-cond" (func 35))
  (export "as-select-all" (func 36))
  (export "as-call-first" (func 38))
  (export "as-call-mid" (func 39))
  (export "as-call-last" (func 40))
  (export "as-call-all" (func 41))
  (export "as-call_indirect-func" (func 42))
  (export "as-call_indirect-first" (func 43))
  (export "as-call_indirect-mid" (func 44))
  (export "as-call_indirect-last" (func 45))
  (export "as-call_indirect-all" (func 46))
  (export "as-local.set-value" (func 47))
  (export "as-local.tee-value" (func 48))
  (export "as-global.set-value" (func 49))
  (export "as-load-address" (func 50))
  (export "as-loadN-address" (func 51))
  (export "as-store-address" (func 52))
  (export "as-store-value" (func 53))
  (export "as-store-both" (func 54))
  (export "as-storeN-address" (func 55))
  (export "as-storeN-value" (func 56))
  (export "as-storeN-both" (func 57))
  (export "as-unary-operand" (func 58))
  (export "as-binary-left" (func 59))
  (export "as-binary-right" (func 60))
  (export "as-binary-both" (func 61))
  (export "as-test-operand" (func 62))
  (export "as-compare-left" (func 63))
  (export "as-compare-right" (func 64))
  (export "as-compare-both" (func 65))
  (export "as-convert-operand" (func 66))
  (export "as-memory.grow-size" (func 67))
  (export "nested-block-value" (func 68))
  (export "nested-br-value" (func 69))
  (export "nested-br_if-value" (func 70))
  (export "nested-br_if-value-cond" (func 71))
  (export "nested-br_table-value" (func 72))
  (export "nested-br_table-value-index" (func 73))
  (elem (;0;) (i32.const 0) func 37)
  )
