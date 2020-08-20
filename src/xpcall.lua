--- pcall接收一个函数和要传递给后者的参数，并执行，执行结果：有错误、无错误；返回值true或者或false, errorinfo
--- pcall以一种"保护模式"来调用第一个参数，因此pcall可以捕获函数执行中的任何错误
--- 通常在错误发生时，希望落得更多的调试信息，而不只是发生错误的位置。但pcall返回时，它已经销毁了调用桟的部分内容
--- xpcall接收第二个参数——一个错误处理函数，当错误发生时，Lua会在调用桟展开(unwind)前调用错误处理函数，于是就可以在这个函数中使用debug库来获取关于错误的额外信息了

function myFunction ()
    n = n/nil
end

function myErrorHandler(err)
    print("ERROR:", err)
end

status = xpcall(myFunction, myErrorHandler)
print( status)
