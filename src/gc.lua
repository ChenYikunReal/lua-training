--- 垃圾回收
myTable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

myTable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))
