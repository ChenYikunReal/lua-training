tab1 = { key1 = "val1", key2 = "val2", "val3" }

for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil

print("-----------------------------")

for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

print("-----------------------------")

-- Lua的nil作比较时需要加上引号
print(type(X))
print(type(X) == nil)
print(type(X) == "nil")
