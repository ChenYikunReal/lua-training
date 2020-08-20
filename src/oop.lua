--- Meta class
Shape = {area = 0}

--- 基础类方法 new
function Shape:new (o,side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    side = side or 0
    self.area = side*side;
    return o
end

--- 基础类方法 printArea
function Shape:printArea ()
    print("面积为 ",self.area)
end

--- 创建对象
myShape = Shape:new(nil,10)
myShape:printArea()

Square = Shape:new()
--- 派生类方法 new
function Square:new (o,side)
    o = o or Shape:new(o,side)
    setmetatable(o, self)
    self.__index = self
    return o
end

--- 派生类方法 printArea
function Square:printArea ()
    print("正方形面积为 ",self.area)
end

--- 创建对象
mySquare = Square:new(nil,10)
mySquare:printArea()

Rectangle = Shape:new()
--- 派生类方法 new
function Rectangle:new (o,length,breadth)
    o = o or Shape:new(o)
    setmetatable(o, self)
    self.__index = self
    self.area = length * breadth
    return o
end

--- 派生类方法 printArea
function Rectangle:printArea ()
    print("矩形面积为 ",self.area)
end

--- 创建对象
myRectangle = Rectangle:new(nil,10,20)
myRectangle:printArea()
