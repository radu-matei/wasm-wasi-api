(module
    (import "printer" "print_greeting" (func $print_greeting (result i32)))

    (memory 1)
    (export "memory" (memory 0))

    (func $main (export "_start")
        (call $print_greeting)
        return
    )
)