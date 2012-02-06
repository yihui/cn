---
layout: post
title: 小提琴图：展示数据密度分布的工具
categories:
- Featured
- R language
tags:
- R
- UsingR
- 小提琴图
- 统计链接
---

小提琴图没什么特别的，就是把密度估计放在一根对称轴的两边，然后竖起来就可以了。我们可以把它看做箱线图的同伴；箱线图只是展示了分位数的位置，小提琴图展示了任意位置的密度，通过小提琴图我们可以知道哪些位置的密度较高。另外，我们也可以把多个小提琴放在一起比较。如下图：

[caption id="" align="aligncenter" width="480" caption="小提琴图；Violin Plot"][![小提琴图；Violin Plot](http://yihui.name/cn/wp-content/uploads/1225451082_0.png)](http://yihui.name/cn/wp-content/uploads/1225451082_0.png)[/caption]

所用函数`simple.violinplot()`来自于UsingR包，不过它没有提供填充不同颜色的功能，上图是我修改了源代码之后作出来的。问题来自于Adelaide大学的Fernando Marmolejo Ramos，他在R-help里面问了没人回答，所以就给我私人Email了。

不多写了，不然到时候书卖不出去了。

[notice type=download]下载源代码：[violin.colors.txt](http://yihui.name/cn/wp-content/uploads/2008/10/violin.colors.txt)[/notice] 
