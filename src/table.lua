-- 创建一个空的 table
local table1 = {}

-- 直接初始表
local table2 = {"apple", "pear", "orange", "grape"}
-- Lua的表索引从1开始，这点与一般编程语言的数组索引从0开始迥然不同
for key, val in pairs(table2) do
    print("Key", key)
end

print()

-- Lua中的表(table)其实是一个"关联数组"，数组的索引可以是数字或者是字符串
table3 = {}
table3["key"] = "value"
key = 10
table3[key] = 22
table3[key] = table3[key] + 11
for k, v in pairs(table3) do
    print(k .. " : " .. v)
end

print()

-- 未初始化的表为nil，表不限长度，可自动扩容
for i = 1, 10 do
    table1[i] = i
end
table1["key"] = "val"
print(table1["key"])
print(table1["none"])

-- 移除引用
table1 = nil

-- 简单的 table
table4 = {}
print("table4 的类型是 ",type(table4))

table4[1]= "Lua"
table4["wow"] = "修改前"
print("table4 索引为 1 的元素是 ", table4[1])
print("table4 索引为 wow 的元素是 ", table4["wow"])

-- table5和table4的是指同一个 table
table5 = table4

print("table5 索引为 1 的元素是 ", table5[1])
print("table4 索引为 wow 的元素是 ", table5["wow"])

table5["wow"] = "修改后"

print("table4 索引为 wow 的元素是 ", table4["wow"])

-- 释放变量
table5 = nil
print("table5 是 ", table5)

-- table4 仍然可以访问
print("table4 索引为 wow 的元素是 ", table4["wow"])

table4 = nil
print("table4 是 ", table4)
