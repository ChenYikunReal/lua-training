table1 = setmetatable({ key1 = "value1"}, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})
print(table1.key1, table1.key2)
--- 简写
mytable1 = setmetatable({ key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable1.key1, mytable1.key2)



mymetatable2 = {}
mytable2 = setmetatable({ key1 = "value1"}, { __newindex = mymetatable2 })
print(mytable2.key1)
mytable2.newkey = "新值2"
print(mytable2.newkey, mymetatable2.newkey)
mytable2.key1 = "新值1"
print(mytable2.key1, mymetatable2.key1)



mytable3 = setmetatable({ key1 = "value1"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")
    end
})
mytable3.key1 = "new value"
mytable3.key2 = 4
print(mytable3.key1, mytable3.key2)



mytable4 = setmetatable({ 10, 20, 30 }, {
    __tostring = function(mytable)
        sum = 0
        for k, v in pairs(mytable) do
            sum = sum + v
        end
        return "表所有元素的和为 " .. sum
    end
})
print(mytable4)
