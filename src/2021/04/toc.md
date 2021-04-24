# 2021.04

`汇总中...`
<!-- 📅： 16.md已完成 -->

## Tools

- [tooling.report](https://bundlers.tooling.report) - 为您的下一个Web项目确定最佳构建工具的快速方法，或者是否值得进行工具迁移，或者如何在现有配置和代码库中采用工具的最佳实践。
- [docmirror/dev-sidecar](https://github.com/docmirror/dev-sidecar) - 开发者边车，github打不开，github加速，git clone加速，git release下载加速，stackoverflow加速
- [natto.dev | interactive JavaScript space](https://natto.dev)
- [Powerful, Extensible Dev Tools](https://github.com/nrwl/nx)
- [Fusuma](https://github.com/hiroppy/fusuma) - 使用Markdown轻松制作幻灯片。
- [rive](https://rive.app) - 基于 Flutter 开发的网页端动画制作工具(站点支持 PWA) 提供 Web(基于 wasm)、Flutter、Cpp、iOS、Android 五种运行时。

`docs`

- [Create book from markdown files. Like Gitbook but implemented in Rust](https://github.com/rust-lang/mdBook)

`dev`

- [Comparing the New Generation of Build Tools - esbuild snpwpack vite wmr](https://css-tricks.com/comparing-the-new-generation-of-build-tools)

## News

- [jondot/awesome-weekly](https://github.com/jondot/awesome-weekly) - 来自软件界的优质每周精选新闻通讯的精选列表
- [zudochkin/awesome-newsletters](https://github.com/zudochkin/awesome-newsletters) - 精选的精选新闻通讯清单
- [zenany/weekly](https://github.com/zenany/weekly) - 汇总平时看到的好文章，前端技术 & 产品研发为主...
- [印记中文 - React Status Weekly](https://docschina.org/weekly/react/docs)

## VS Code

`theme`

- [Github Theme](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme&WT.mc_id=devcloud-00000-cxa)

## FE

`js`

- [我国首个 JS 语言提案在 ECMA 进入 Stage 3](https://www.toutiao.com/i6950609447534412327)
- [ES2021/ES12 令人期待的新特性](https://mp.weixin.qq.com/s/wh1RcA1-32rLI4xRaKi-uw)
- [Demos for different Houdini APIs](https://github.com/GoogleChromeLabs/houdini-samples)

`react`

- [Recoil](https://juejin.cn/post/6950997088947666951) - Facebook 新一代的 React 状态管理库
- [React Summit](https://remote.reactsummit.com) – The Biggest React Conference Online
- [pansyjs/react-amap](https://github.com/pansyjs/react-amap) - 基于 React 封装的高德地图组件，助你轻松的接入高德地图到 React 项目中。
- 可以用 React 做视频的 [remotion 发布 2.0](https://www.remotion.dev/blog/2-0/)，支持音频，使用 esbuild-loader 代替 babel-loader，\<Gif> 组件等

`vue`

- [Official Vue.js Conference USA](https://us.vuejs.org)
- [Evan You - VueConf US 2021](https://docs.google.com/presentation/d/1Lu1X6dyofyWqE6lpWsdUAkHMWm9pB6A9bs187iIUin4/edit#slide=id.p)
- vue-cli维护者蒋豪群，给大家讲[如何学习新的技术（以vue3个vite为例）](https://b23.tv/7IaUec)

`webpack`

- [webpack 5.33](https://github.com/webpack/webpack/releases/tag/v5.33.0)，支持针对不同 entry 配置不同的 publicPath
- [webpack源码](https://github.com/webpack/webpack/blob/master/lib/DynamicEntryPlugin.js) - 发现entry的隐藏技能，支持entry 是一个 promise
- [SVG Import as React Component 的方式并不好](https://twitter.com/_developit/status/1382838799420514317)，因为 bundle 到一起，没有用到的也会加载，所以会影响加载性能和内存占用，那么推荐的方式是啥？import 后返回一个 url 可能比较合适，比如用 webpack 的 url-loader

`esbuild`

- [esmon](https://github.com/egoist/esmon) - 类似 nodemon 但基于 esbuild，支持 ts 等

`babel`

- Babel 新增 [Feature Timeline](https://babeljs.io/docs/en/features-timeline)，把之前 changelog 里的重要功能摘了出来，一目了然

### CSS

- [Completely unstyled, fully accessible UI components, designed to integrate beautifully with Tailwind CSS.](https://headlessui.dev)

`PWA`

- [Your PWA is going to break in August 2021](https://link.medium.com/S91NRcCGsfb)

`deno`

- deno 1.9 支持 import completions in the lsp 如果未来是 bundless，这和 remote dts 应该都会成为 esm cdn 的基础设施
  - [Deno 1.9 Release Notes](https://deno.com/blog/v1.9)
  - [Import completions in the LSP](https://deno.com/blog/v1.9#import-completions-in-the-lsp)
  - [skypack-cdn - Hello, Deno!](https://docs.skypack.dev/skypack-cdn/code/deno#hello-deno)
  - [vscode_deno - Import Completions](https://github.com/denoland/vscode_deno/blob/main/docs/ImportCompletions.md)

`FE-Other`

- BarcodeDetector 结合 navigator.getUserMedia（摄像头） 可用于识别二维码
  - [With `BarcodeDetector` you decode linear and two-dimensional (e.g. QR Code) codes directly in a browser!](https://twitter.com/stackblitz/status/1382337979767742464)
  - [Web API - BarcodeDetector](https://developer.mozilla.org/en-US/docs/Web/API/BarcodeDetector)
  - [Web Site](https://barcode-detector.stackblitz.io)
- Chrome Features
  - [ES Modules for service workers ('module' type option)](https://www.chromestatus.com/features/4609574738853888):
  - [ES Modules for Service Workers](https://docs.google.com/document/d/1SeQ085YdBTtW3D_ygSpO0Wz2DAe8QiS1gj37IG5lstg/edit#)
  - [`blog` New Chrome 90](https://developer.chrome.com/blog/new-in-chrome-90)
  - [`youtube` New in Chrome 90](https://www.youtube.com/watch?v=h3MONldIoNM): Overflow Clip, Permissions Policy, the Declarative Shadow DOM, and more!
  - [Declarative Shadow DOM](https://web.dev/declarative-shadow-dom)
- [Run multiple promise-returning & async functions with limited concurrency](https://github.com/sindresorhus/p-limit)
- [The Complete Guide to Full Stack Ethereum Development](https://dev.to/dabit3/the-complete-guide-to-full-stack-ethereum-development-3j13)

## Wasm

- [WebAssembly入门 （Vite + Rust）](https://lencx.github.io/book/wasm/rust_wasm_frontend.html)

## Rust

- [libp2p-rs](https://github.com/netwarps/libp2p-rs) - rust实现的libp2p
- [rbatis](https://github.com/rbatis/rbatis) - 用rust实现ORM框架
- [iced](https://github.com/hecrj/iced) - rust 9.2K 跨平台 GUI 仓库
- [swc](https://github.com/swc-project/swc) - rust编写的超快速的typescript/ javascript编译器
