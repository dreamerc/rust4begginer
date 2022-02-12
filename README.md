The book
=======
https://doc.rust-lang.org/book/

Install
=====
Quick Start
------------
```bash
git clone https://github.com/dreamerc/rust4beginner.git
docker build  --tag rust4beginner .
docker run -it --rm -p 8888:8888 rust4beginner
```

Docker (optional)
-------
Docker VNC Desktop
```
docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
```
use browser open http://localhost:6080/ , then lxterminal

Ubuntu
-------
**Before start , Please APT Update+Upgrade**

```bash
add-apt-repository ppa:ubuntu-mozilla-security/rust-updates
apt install rustc
```

Jupyter
--------
```bash
apt install jupyter-notebook cmake g++
cargo install evcxr_jupyter
```
Start
---
```bash
jupyter notebook --ip=127.0.0.1 --port=8888 --allow-root
```
Cargo Bin
------
~/.profile
```bash
if [ -d "$HOME/.cargo/bin" ] ; then
PATH="$HOME/.cargo/bin:$PATH"
fi
```

Verify
====
Hello World (hello.rs)
https://doc.rust-lang.org/rust-by-example/hello.html
```rust
// This is a comment, and is ignored by the compiler
// You can test this code by clicking the "Run" button over there ->
// or if you prefer to use your keyboard, you can use the "Ctrl + Enter" shortcut

// This code is editable, feel free to hack it!
// You can always return to the original code by clicking the "Reset" button ->

// This is the main function
fn main() {
    // Statements here are executed when the compiled binary is called

    // Print text to the console
    println!("Hello World!");
}
```
Hello World (jupyter)
```rust
println!("Hello World!");
```