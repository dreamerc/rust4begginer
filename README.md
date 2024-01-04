This project is focusing on the beginner during Rust explore.

Release Note
===
- 2024-01-04 Rust 1.75.0 update
- 2023-12-20 Rust 1.74.1 update
- 2023-11-18 Rust 1.74.0 update

<details>
<summary>History</summary>

- 2023-10-06 Rust 1.73.0 update
- 2023-08-25 Rust 1.72.1 update
- 2023-08-25 Rust 1.72.0 update
- 2023-07-14 Rust 1.71.0 update
- 2023-06-06 Rust 1.70.0 update
- 2023-04-21 Rust 1.69.0 update
- 2023-03-24 Rust 1.68.1 update
- 2023-03-12 Rust 1.68.0 update
- 2023-02-18 Rust 1.67.1 update
- 2023-01-28 Rust 1.67.0 update
- 2023-01-11 Rust 1.66.1 update
- 2022-12-16 Rust 1.66.0 update
- 2022-11-05 Rust 1.65.0 update
- 2022-09-23 Rust 1.64.0 update
- 2022-08-16 Rust 1.63.0 update
- 2022-07-25 Rust 1.62.1 update
- 2022-07-07 Rust 1.62.0 update
- 2022-06-07 Rust 1.61.0 update
- 2022-04-11 Rust 1.60.0 update
- 2022-03-21 Rust 1.59.0 docker hub update 2
- 2022-03-09 Rust 1.59.0 docker hub update
- 2022-02-26 Rust 1.59.0 update
- 2022-02-13 Rust 1.58.1 + Jupyter with Docker Hub update
</details>

Quick Start
========

```bash
docker run -it --rm -p 8888:8888 dreamerwolf/rust4beginner:latest
```

![demo.gif](https://raw.githubusercontent.com/dreamerc/rust4beginner/main/demo.gif)

**Ctrl+C , Y to Quit**

![demo.png](https://raw.githubusercontent.com/dreamerc/rust4beginner/main/demo.png)


The book
=======
https://doc.rust-lang.org/book/

Verify
====
Jupyter
---
Hello World
```rust
println!("Hello World!");
```
Compile
---
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

```bash
rustc hello.rs
./hello
```

How to Build your own
=====
Quick Start for offline
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
**Before start, Please APT Update+Upgrade**

```bash
add-apt-repository ppa:ubuntu-mozilla-security/rust-updates
apt install rustc
```

Jupyter
--------
```bash
apt install jupyter-notebook cmake g++
cargo install evcxr_jupyter
evcxr_jupyter --install
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
