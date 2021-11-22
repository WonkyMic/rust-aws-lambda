.PHONY : build zip toolchain
build :
	cargo build --release --target x86_64-unknown-linux-musl
zip :
	zip -j rust.zip ./target/x86_64-unknown-linux-musl/release/bootstrap
toolchain :
	rustup target add x86_64-unknown-linux-musl