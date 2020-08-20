function myFunction ()
    print(debug.traceback("Stack trace"))
    print(debug.getinfo(1))
    print("Stack trace end")
    return 10
end

myFunction()
print(debug.getinfo(1))


--- 我们经常需要调试函数的内的局部变量，可以使用getupvalue()函数来设置它们。
function newCounter ()
    local n = 0
    local k = 0
    return function ()
        k = n
        n = n + 1
        return n
    end
end

counter = newCounter ()
print(counter())
print(counter())

local i = 1

repeat
    name, val = debug.getupvalue(counter, i)
    if name then
        print ("index", i, name, "=", val)
        if(name == "n") then
            debug.setupvalue (counter,2,10)
        end
        i = i + 1
    end
until not name

print(counter())
