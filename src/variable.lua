a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c,d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6

-- 交换a和b的值
-- 变量个数 > 值的个数 => 按变量个数补足nil
-- 变量个数 < 值的个数 => 多余的值会被忽略
a, b = b, a
print(a,b)      --> 6 5

a, b, c = 0, 1
print(a,b,c)             --> 0   1   nil

a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a,b)               --> 1   2

-- 注意：如果要对多个变量赋值必须依次对每个变量赋值
a, b, c = 0
print(a,b,c)             --> 0   nil   nil

-- 多值赋值经常用来交换变量，或将函数调用返回给变量
function returnTwoNum()
    return 1, 2
end
-- 直接接收多返回值
a, b = returnTwoNum()
print(a,b)

-- 应该尽量多使用局部变量 好处有两点：1. 避免命名冲突 2. 访问局部变量的速度比全局变量更快
