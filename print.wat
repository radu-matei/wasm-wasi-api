(module
    (import "wasi_unstable" "fd_write" (func $fd_write (param i32 i32 i32 i32) (result i32)))
    (import "host" "double" (func $double (param i32) (result i32)))
    
    (memory 1)
    (export "memory" (memory 0))

    (func $main (export "_start")
        i32.const 42
        call $double
        return
    )
)