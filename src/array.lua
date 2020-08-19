array1 = { "Lua", "C", "C++"}

-- 数组索引从1开始 array[0] = nil
for i= 0, 2 do
    print(array1[i])
end

print()

-- 索引初值可以自己指定 默认为1 修改后负数索引也行
array2 = {}
for i= -2, 2 do
    array2[i] = i *2
end
for i = -2,2 do
    print(array2[i])
end

print()

array3 = {}
for i=1,3 do
    array3[i] = {}
    for j=1,3 do
        array3[i][j] = i*j
    end
end
for i=1,3 do
    for j=1,3 do
        print(array3[i][j])
    end
end

print()

array4 = {}
maxRows = 3
maxColumns = 4
for row=1,maxRows do
    for col=1,maxColumns do
        array4[row*maxColumns +col] = row*col
    end
end
for row=1,maxRows do
    for col=1,maxColumns do
        print(array4[row*maxColumns +col])
    end
end
