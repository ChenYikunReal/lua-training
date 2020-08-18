-- 只在函数开始执行前执行一次
function f(x)
    print("function")
    return x*2
end

-- 闭区间
for i=1, f(5) do
    print(i)
end

-- 闭区间
for i=10,1,-1 do
    print(i)
end

-- 泛型for循环 类似于java的foreach
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end

days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
for i,v in ipairs(days) do
    print(v)
end
