# Lua学习记录

Lua是一种轻量小巧的脚本语言，用标准C语言编写并以源代码形式开放，其设计目的是为了嵌入应用程序中，从而为应用程序提供灵活的扩展和定制功能。

![在这里插入图片描述](https://github.com/ChenYikunReal/lua_training/blob/master/images/lua-bits.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg5NjMxOA==,size_16,color_FFFFFF,t_70)


IDEA插件下载地址：
- [插件-EmmyLua](https://plugins.jetbrains.com/plugin/9768-emmylua)
- [插件-Lua](https://plugins.jetbrains.com/plugin/5055-lua)
- 上述两个插件我已放置在项目中，避免读者下载困难，我用的是EmmyLua，因为评分相对较高

## Lua保留字
- and
- break 
- do
- else
- elseif
- end 
- false
- for
- function
- if 
- in
- local
- nil
- not 
- or
- repeat
- return
- then 
- true
- until
- while
- goto

## Lua全局变量
Lua变量默认是全局的，变量被赋值为`nil`时，相当于删除了这个全局变量。

## Lua数据类型
|数据类型 | 描述|
|:---:|:---:|
|nil | 这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）
|boolean | 包含两个值：false和true
|number | 表示双精度类型的实浮点数
|string | 字符串由一对双引号或单引号来表示
|function | 由 C 或 Lua 编写的函数
|userdata | 表示任意存储在变量中的C数据结构
|thread | 表示执行的独立线路，用于执行协同程序
|table | Lua中的表(table)其实是一个"关联数组"，数组的索引可以是数字、字符串或表类型<br/>在Lua里，table的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表
