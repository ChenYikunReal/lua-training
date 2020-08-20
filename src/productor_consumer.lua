local newProductor

function productor()
    local i = 0
    while true do
        i = i + 1
        --- 将生产的物品发送给消费者
        send(i)
    end
end

function consumer()
    while true do
        --- 从生产者那里得到物品
        local i = receive()
        print(i)
    end
end

function receive()
    local status, value = coroutine.resume(newProductor)
    return value
end

function send(x)
    --- x表示需要发送的值，值返回以后，就挂起该协同程序
    coroutine.yield(x)
end

--- 启动程序
newProductor = coroutine.create(productor)
consumer()
