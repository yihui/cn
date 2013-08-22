---
layout: post
title: 谁来救活tikzDevice？
categories: [R language]
tags: [tikzDevice, 图形设备]
---

我盼了大半年，等人踩着五彩祥云来……来……把**tikzDevice**救活，它的[Github库在此](https://github.com/Sharpie/RTikZDevice)。

大半年前，因为CRAN开始肃清那些`R CMD check`有警告和错误的包，**tikzDevice**被拿下了。我可以处理R层面的问题，但C层面和R图形设备方面实在不懂。多次骚扰原作者无果（各种忙），现在他也不搭理我了。

tikzDevice提供了一个新的图形设备，可以将R图形存为TikZ文件，进而可通过LaTeX编译为PDF，这样R图形就可以原生支持LaTeX，而不需要`demo(plotmath)`这样的黑魔法了。
