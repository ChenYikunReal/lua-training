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

## Lua线程与协程
在Lua里，最主要的线程是协同程序(coroutine)。它跟线程(thread)差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。

线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起(suspend)时才会暂停。

## Lua运算符
- `幂乘符号` => `^` => `a^2`
- `不等于符号` => `~=`(在大部分编程语言中是`!=`或`<>`) => `a ~= b`
- `逻辑运算符` => `and`、`or`、`not`(很多编程语言中是`&&`、`||`、`!`) => `a and b`
- `字符串连接符` => `..` => `"Hello".."World"`
- `长度获取符`(字符串或表长) => `#` => `#"Hello"`

## Lua转义字符
![在这里插入图片描述](https://github.com/ChenYikunReal/lua_training/blob/master/images/转义字符.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg5NjMxOA==,size_16,color_FFFFFF,t_70)

## Lua字符串函数
![在这里插入图片描述](https://github.com/ChenYikunReal/lua_training/blob/master/images/string-function.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg5NjMxOA==,size_16,color_FFFFFF,t_70)
<br/><br/>
```lua
--- s为字符串 i为起始位置
string.sub(s, i)
--- j为结束位置
string.sub(s, i, j)

--- 字符串
local sourcestr = "prefix--abcdefghijklmnopqrstuvwxyz--suffix"
print("\n原始字符串", string.format("%q", sourcestr))
--- 截取部分，第1个到第15个
local first_sub = string.sub(sourcestr, 4, 15)
print("\n第一次截取", string.format("%q", first_sub))
--- 取字符串前缀，第1个到第8个
local second_sub = string.sub(sourcestr, 1, 8)
print("\n第二次截取", string.format("%q", second_sub))
--- 截取最后10个
local third_sub = string.sub(sourcestr, -10)
print("\n第三次截取", string.format("%q", third_sub))
--- 索引越界，输出原始字符串
local fourth_sub = string.sub(sourcestr, -100)
print("\n第四次截取", string.format("%q", fourth_sub))
```

## Lua字符串格式化
| 符号 | 说明 |
|:---:|:---:|
| %c | 接受一个数字, 并将其转化为ASCII码表中对应的字符|
| %d, %i | 接受一个数字并将其转化为有符号的整数格式|
| %o | 接受一个数字并将其转化为八进制数格式|
| %u | 接受一个数字并将其转化为无符号整数格式|
| %x | 接受一个数字并将其转化为十六进制数格式, 使用小写字母|
| %X | 接受一个数字并将其转化为十六进制数格式, 使用大写字母|
| %e | 接受一个数字并将其转化为科学记数法格式, 使用小写字母e|
| %E | 接受一个数字并将其转化为科学记数法格式, 使用大写字母E|
| %f | 接受一个数字并将其转化为浮点数格式|
| %g(%G) | 接受一个数字并将其转化为%e(%E, 对应%G)及%f中较短的一种格式|
| %q | 接受一个字符串并将其转化为可安全被Lua编译器读入的格式|
| %s | 接受一个字符串并按照给定的参数格式化该字符串|
