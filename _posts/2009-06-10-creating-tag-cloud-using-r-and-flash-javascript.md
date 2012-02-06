---
layout: post
title: 用R语言和Flash以及JavaScript生成标签云
categories:
- Featured
- R language
- Technology
tags:
- Flash
- HTML
- JavaScript
- R
- R-help
- Wordpress
- wp-cumulus
- XML
- 标签云
---

前些日子有位童鞋在R-help邮件列表里问如何生成那种单词大小与其出现频率成比例的图，这玩意儿也就是通常所说的标签云（Tag Cloud）。我琢磨了一下WordPress的插件wp-cumulus，发现其原理很简单，不过就是将标签信息以XML形式通过JavaScript传递给一个Flash文件，所以也很容易用R去实现这个传递过程，即：将文本、超级链接以及频数写成XML，然后嵌入到HTML文件中。整个过程参见[Creating Tag Cloud Using R and Flash / JavaScript (SWFObject)](http://yihui.name/en/2009/06/creating-tag-cloud-using-r-and-flash-javascript-swfobject/)这篇日志，函数源代码和示例数据都可以从那里下载。

效果是这样的：



Your browser does not support Flash or Javascript!




（通过RSS阅读的童鞋们请打开原文链接在浏览器中观看，否则啥都看不到）
