---
layout: post
title: 终于找到RGtk2、cairoDevice等依赖于GTK+或cairo的程序包出错的原因
categories:
- R language
tags:
- cairo
- cairoDevice
- dll
- GTK+
- R
- RGtk2
- R包
---

前段时间升级了R到2.8.0，结果发现RGtk2和cairoDevice等包都不能用了，加载的时候总是说动态链接库有问题，如下图：


![libglib库出错](http://yihui.name/cn/wp-content/uploads/1225436358_0.png)



今日突然想起在更新R之前我曾经安装过wGlade（一个从GTK界面生成xml文件的工具），但是我已经将它卸载了。这回我意识到可能没有卸载完全，某些dll库可能与GTK+冲突了，到system32目录下面一看，果不其然，libglib等动态链接库都躺在那儿呢。再重装wGlade并卸载，从安装和卸载过程中观察到system32下面有一系列dll文件只是被安装了但没被删除，因此导致多个dll库冲突，所以R的那些包也无法使用。

之前我曾经搜索过C盘，甚至搜过注册表，都没找到这些dll，今天不知咋的天灵灵地灵灵让我发现了。前面有位朋友zhoulvjun是不是有同样的问题呢？检查一下你的系统PATH下面是否存在相冲突的dll文件，在确定删掉无碍的前提下可以把它们删了。

以下两图是对[前面提到过的CANDLE数据](http://yihui.name/cn/2008/10/birthday-present-to-felix-andrews/)的playwith展示：


[![](http://yihui.name/cn/wp-content/uploads/1225438370_0.png)](http://yihui.name/cn/wp-content/uploads/1225438370_1.png) [![](http://yihui.name/cn/wp-content/uploads/1225438386_0.png)](http://yihui.name/cn/wp-content/uploads/1225438386_1.png)



数据下载：

[文件下载链接](http://yihui.name/cn/wp-content/uploads//1225438534_0.zip)

以上数据来自手工鼠标点击记录的坐标以及若干随机数。
