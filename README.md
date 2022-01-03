# crabtrap

Binary crates for my assorted home automation.

Inspired by [The Embedded Rust Book][emb-rust].

[emb-rust]: https://docs.rust-embedded.org/discovery/f3discovery/index.html

## Requirements

Follow the instructions in the [development environment setup section of The Embedded Rust Book][emb-rust-setup] to install the build requirements for your system.

Afterwards, download the pre-compiled standard library for our board's arch:

```sh
rustup target add thumbv7em-none-eabihf
```

[emb-rust-setup]: https://docs.rust-embedded.org/discovery/f3discovery/03-setup/index.html

## Build & Flash

Connect the board to your machine via USB ST-Link and launch OpenOCD in a new terminal (if not already running):

```sh
cd /tmp && \
    openocd -f interface/stlink.cfg -f target/stm32f3x.cfg
```

Use Cargo to build the crate and start a GDB session:

```sh
cargo run
```

> **Note:** a custom cargo config in the `.cargo/config.toml` file tweaks the run command to both use our desired target and start a GDB session.

Once you have a GDB session open, connect it to OpenOCD:

```
(gdb) target remote :3333
```

Next, load the binary:

```
(gdb) load
```

That's it! You have successfully flashed the program to the board.

