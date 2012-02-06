---
layout: post
title: R语言打灯笼
categories:
- R language
- Featured
tags:
- getGraphicsEvent()
- R
- 交互
- 鼠标
---

以下是我以前写的一个利用鼠标交互选择点的例子，主要是`getGraphicsEvent()`函数。

[notice type=download][文件下载链接](http://yihui.name/cn/wp-content/uploads//1224070972_0.r)[/notice]

    
    par(bg = "black", mar = rep(0, 4), pch = 20)
    xx = runif(100)
    yy = runif(100)
    plot(xx, yy, type = "n")
    mousemove = function(buttons, x, y) {
        r = 0.2
        idx = (x - r < xx & xx < x + r) & (y - r < yy & yy < y + r)
        plot(xx, yy, type = "n")
        rect(x - r, y - r, x + r, y + r, border = "yellow", lty = 2)
        points(xx[idx], yy[idx], col = "yellow", cex = 2)
        points(xx[!idx], yy[!idx], col = "red")
        NULL
    }
    mousedown = function(buttons, x, y) {
        "Done"
    }
    getGraphicsEvent("Click mouse to exit", onMouseDown = mousedown,
        onMouseMove = mousemove)


其中`r`可以自行调整。


![](http://yihui.name/cn/wp-content/uploads/1224071155_0.png)
