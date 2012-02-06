---
layout: post
title: 邮件地址的频数统计
categories:
- Technology
- R language
tags:
- Email
- 邮箱
- 频数
---

受Zhang H.启发，自个儿看了看Gmail邮箱的联系人，导出为Outlook的CSV格式，然后读进R，用正则表达式去掉*@部分，table()了一下。Hotmail邮箱的频数比我想象的要高，然后也没想到中科院植物所也排在前面，估计是那次R会议所致。剩下的联系人就分布在五湖四海了，结果请看：

[PDF图形文件下载链接](http://yihui.name/cn/wp-content/uploads/1239636497_0.pdf)

频数文件：

[CSV频数文件下载链接](http://yihui.name/cn/wp-content/uploads/1239636842_0.gz)

    
    x = read.csv("contacts.csv", stringsAsFactor = FALSE)
    y = gsub("^.*@", "", x$E.mail.Address)
    y = sort(table(y))
