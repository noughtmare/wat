(module
  (func $print (import "console" "log") (param i32))

  ;; (type $tuple (struct (field $fst externref) (field $snd externref)))
  ;; (tag $my-error)



  (tag $divide-by-zero)
  

  ;; (func $add (param $x i32) (param $y i32) (result i32)
  ;;   (i32.add (local.get $x) (local.get $y))
  ;; )

  (type $int (struct (field i32)))
  (type $tuple (struct (field anyref) (field anyref)))

  (func (export "main")
    (call $print 
      (struct.get $int 0
        (ref.cast (ref $int) 
          (struct.get $tuple 0
            (struct.new $tuple
              (struct.new $int (i32.const 10))
              (struct.new $int (i32.const 20)))))))

    ;; (call $print (call $add (i32.const 5) (i32.const 6)))

    ;; (block $h
    ;;   (try_table (catch $my-error $h)
    ;;     (throw $my-error)
    ;;     (call $print (i32.const 0)) ;; unreachable (never runs)
    ;;   )
    ;;   (call $print (i32.const 1)) ;; skipped if exception thrown
    ;; )
    ;; (call $print (i32.const 2)) ;; always runs

    ;; (block $if_false
    ;;   (block $if_true
    ;;     (br_if $if_true (i32.eq (i32.const 1) (i32.const 1)))
    ;;     (call $print (i32.const 0))
    ;;     (br $if_false)
    ;;   )
    ;;   (call $print (i32.const 1))
    ;; )
    ;; (block $l0 
    ;;   (try_table (catch $divide-by-zero $l0)
    ;;     (block $l1
    ;;       (br_if $l1 (i32.ne (i32.const 1) (i32.const 0)))
    ;;       (throw $divide-by-zero)
    ;;     )
    ;;     (call $print (i32.div_u (i32.const 12) (i32.const 0))))
    ;; )
    ;; (call $print (i32.const -1))
  )

  
)
