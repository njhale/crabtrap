#![deny(unsafe_code)]
#![no_main]
#![no_std]

#[allow(unused_imports)]
use aux::{entry, iprint, iprintln};

#[entry]
fn main() -> ! {
    let mut itm = aux::init();

    iprintln!(&mut itm.stim[0], "Hello, world!");

    loop {}
}
