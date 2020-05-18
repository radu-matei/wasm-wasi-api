wiggle::from_witx!({
    witx: ["witx/printer.witx"],
    ctx: PrinterCtx,
});
pub struct PrinterCtx {}

impl printer::Printer for PrinterCtx {
    fn print_greeting(&self) -> Result<(), types::Errno> {
        panic!("PRINT GREETING");
    }
}

impl wiggle::GuestErrorType for types::Errno {
    fn success() -> Self {
        unimplemented!()
    }
}
