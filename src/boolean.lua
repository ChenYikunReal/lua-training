print(type(true))
print(type(false))
print(type(nil))

-- false和nil都为false，其余的为true
if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false")
end

-- 数值0也为true
if 0 then
    print("数字 0 是 true")
else
    print("数字 0 为 false")
end
