--- 简单模式

--- 以只读方式打开文件
file = io.open("pporappippam.txt", "r")
--- 设置默认输入文件为pporappippam.txt
io.input(file)
--- 输出文件第一行
print(io.read())
--- 关闭打开的文件
io.close(file)
--- 以附加的方式打开只写文件
file = io.open("pporappippam.txt", "a")
--- 设置默认输出文件为pporappippam.txt
io.output(file)
--- 在文件最后一行添加Lua注释
io.write("--- pporappippam.txt 의 마지막 주석\n")
--- 关闭打开的文件
io.close(file)


--- 完全模式

--- 以只读方式打开文件
file = io.open("pporappippam.txt", "r")
--- 输出文件第一行
print(file:read())
--- 关闭打开的文件
file:close()
--- 以附加的方式打开只写文件
file = io.open("pporappippam.txt", "a")
--- 在文件最后一行添加 Lua 注释
file:write("의 마지막 주석 × 2\n")
--- 关闭打开的文件
file:close()
