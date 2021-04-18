# 快速开始

## 环境

### [Rust](https://www.rust-lang.org/learn/get-started)

```bash
# macOS, Linux
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# 其他安装方式
# https://forge.rust-lang.org/infra/other-installation-methods.html
```

```bash
# 安装mdbook
cargo install mdbook
```

## mdbook文档及常用命令

[mdbook文档](https://rust-lang.github.io/mdBook)

### `mdbook init`

```bash
book/
├── book
└── src
    ├── chapter_1.md
    └── SUMMARY.md
```

### `mdbook build`

构建命令,用于渲染`.md`文件，并输出静态 `html`

它会尝试解析你的`SUMMARY.md`文件，以了解图书的结构并获取相应的文件。

为方便起见,渲染的输出将保持与源目录结构相同。因此，大型书籍在渲染时能保持结构化.

### `mdbook watch`

希望在每次更改文件，都生成图书时, watch命令会很有用。这样就能观察文件，并会在您修改文件时，自动触发构建。

### `mdbook serve`

serve 命令用于通过 HTTP 服务来预览书籍。默认情况下`localhost:3000`。此外,它还会观察图书的目录的更改，自动重建图书，以及为每次更改刷新客户端。

> websocket 连接用于触发客户端刷新

注意: serve命令用于测试书籍的 HTML 输出，并不打算成为网站的完整 HTTP 服务器。

### `mdbook clean`

clean 命令用于删除生成的书籍。
