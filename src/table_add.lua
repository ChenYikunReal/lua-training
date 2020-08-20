function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 两表相加操作
mytable4 = setmetatable({ 1, 2, 3 }, {
    __add = function(mytable, newtable)
        for i = 1, table_maxn(newtable) do
            table.insert(mytable, table_maxn(mytable)+1,newtable[i])
        end
        return mytable
    end
})

secondtable = {4,5,6}

mytable4 = mytable4 + secondtable
for k,v in ipairs(mytable4) do
    print(k,v)
end
