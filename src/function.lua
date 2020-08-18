--- 普通函数 [[ 函数返回两个值的最大值 --]]
function max(num1, num2)
    if (num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end
--- 调用函数
print("两值比较最大值为 ",max(10,4))
print("两值比较最大值为 ",max(5,6))

--- 函数可以赋给变量
myPrint = function(param)
    print("这是打印函数 -   ##",param,"##")
end
--- 函数也可以作为函数的参数
function add(num1,num2,functionPrint)
    result = num1 + num2
    -- 调用传递的函数参数
    functionPrint(result)
end
myPrint(10)
--- myPrint 函数作为参数传递
add(2,5, myPrint)

--- 函数多返回值
function maximum (a)
    local mi = 1             -- 最大值索引
    local m = a[mi]          -- 最大值
    for i,val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end
print(maximum({8,10,23,12,5}))

--- 函数不定长参数列表
function average(...)
    result = 0
    local arg={...}    ---> arg 为一个表，局部变量
    for i,v in ipairs(arg) do
        result = result + v
    end
    print("总共传入 " .. #arg .. " 个数")
    return result/#arg
end
print("平均值为",average(10,5,3,4,5,6))

--- 可以混用固定参数和不定长参数 固定参数应该放在前面
function fwrite(fmt, ...)  ---> 固定的参数fmt
    return io.write(string.format(fmt, ...))
end
fwrite("test\n")       --->fmt = "test", 没有变长参数。  
fwrite("%d%d\n", 1, 2)   --->fmt = "%d%d", 变长参数为 1 和 2

--- 还可以通过select("#",...)来获取可变参数的数量
function average(...)
    result = 0
    local arg={...}
    for i,v in ipairs(arg) do
        result = result + v
    end
    print("总共传入 " .. select("#",...) .. " 个数")
    return result/select("#",...)
end
print("平均值为",average(10,5,3,4,5,6))

--- select('#', …) 返回可变参数的长度
--- select(n, …) 用于返回 n 到 select('#',…) 的参数
do
    function foo(...)
        for i = 1, select('#', ...) do  --->获取参数总数
            local arg = select(i, ...); --->读取参数
            print("arg", arg);
        end
    end
    foo(1, 2, 3, 4);
end
