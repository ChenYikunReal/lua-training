local function add(a,b)
    assert(type(a) == "number", "a不是一个数字")
    assert(type(b) == "number", "b不是一个数字")
    return a+b
end
add(10)
