---
layout: post
title: POLLEN数据：散点图中藏数据的历史名案
categories:
- Featured
- R language
tags:
- OpenGL
- pollen
- R
- rgl
- 三维图形
- 图穷匕首见
---

今天看Simon他们的[iplots](http://www.iplots.org/)主页，突然注意到里面α-Channel小节中有[pollen数据](http://stat.cmu.edu/datasets/pollen.data)的展示，话说九月初我曾经造过一个类似的例子，当时本来是想用这笔数据的，但是由于实在想不起来名字，也就没找到，只好自己编了一批数据。

有位叫David Coleman的老兄在1986年某一天等人的时候随便找了几个字母的坐标表示，然后扔到一大堆随机数中藏起来，后来成了ASA Data Expo的名数据。这里是我用rgl包作出的探索示例：



[Letters "EUREKA" in POLLEN data (using OpenGL)](http://vimeo.com/1982725?pg=embed&sec=1982725) from [Yihui Xie](http://vimeo.com/user728417?pg=embed&sec=1982725) on [Vimeo](http://vimeo.com?pg=embed&sec=1982725).


图穷“匕首”见。

该演示已经收入`animation`包：

    
    library(animation)
    demo('pollen')
