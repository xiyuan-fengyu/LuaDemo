--
-- Created by IntelliJ IDEA.
-- User: xiyuan_fengyu
-- Date: 2016/7/28
-- Time: 9:37
-- To change this template use File | Settings | File Templates.
--

tab = {name = "小明", sex = "男", age = "20" }
for key, val in pairs(tab) do
    print(key, val)
end

tab.name = "新名字"

valNil = nil
print(valNil, type(valNil))

valNumber = 1.2
print(valNumber, type(valNumber))

valStr = "字符串"
print(valStr, type(valStr))

valBool = true
print(valBool, type(valBool))

valFun = print
valFun(valFun, type(valFun))

valType = type(nil)
print(valType, type(valType))

--字符串块
valStrBlock = [[这是一个很长的字符串
这是一个很长的字符串
这是一个很长的字符串
这是一个很长的字符串
这是一个很长的字符串
这是一个很长的字符串
这是一个很长的字符串
这是一个很长的字符串]]
print(valStrBlock, type(valStrBlock))


--字符串连接
print(1 .. " + " .. 2 .. " = " .. 1 + 2)
--字符串自动转换为数字相加
print(1 + "2")



tab1 = {"number_1", _2 = "number_2", "number_3"}
print(tab1, type(tab1))
print(tab1[2])
print(tab1._2)


--if判断
if 1 + 1 == 2 and not(1 == 2) then
    print(true)
else
    print(false)
end


--循环
--for循环
for i = 0, 5 do
    print("for", i)
end

--while循环
local i = 0
while(i < 5)
do
    print("while", i)
    i = i + 1
end

--repeat untile
local i = 0
repeat
    print("repeat util", i)
    i = i + 1
until (i >= 5)

--break
local i = 0
for i = 0, 10 do
    if i >= 3 then
        break
    else
        print("for break", i)
    end
end



--把匿名函数当参数传递
function twoItemOption(item1, item2, option)
    return option(item1, item2)
end

print(twoItemOption(1, 2, function(i1, i2) return i1 + i2 end))



valGlobal = 1
local valLocal = 1

function testGlobalAndLocal()
    local valLocal = 2
    print(valGlobal, valLocal)
end

function testGlobalAndLocal1()
    local valGlobal = 2
    print(valGlobal, valLocal)
end

print(valGlobal, valLocal)

testGlobalAndLocal()

testGlobalAndLocal1()

--赋值
c = {}
a, b, c.sort = 1, 2, 3
print(a, b, c, c.sort, type(c))

--交换值
a, b = b, a
print(a, b)


--可变参数
function avg(...)
    local args = {...}
    local argNum = #args
    local argSum = 0
    for i in ipairs(args) do
        argSum = argSum + i
    end
    return argSum / argNum
end

print("1 2 3 的平均数为：", avg(1, 2, 3))

--运算符 + - * / % ^(幂运算)
print("2 ^ 4 = ", 2 ^ 4)
print(2^3^2)
print(2^(3^2))
print((2^3)^2)
print(5 / 2)
print(5.1 / 2)
print(5 % 2)
print(5.1 % 2)

--关系运算符 == ~=(不等于) < <= >= >
print(1 ~= 2)

--逻辑运算符
print(true and false)
print(true or false)
print(not(true))


obj = {
    name = "Tom",
    describeSelf = function ()
        print("I'm Tom")
    end
}

print(obj.name)
print(obj.describeSelf())

function test(n)
    if n == 1 then
        return 1
    else
        return n * test(n - 1)
    end
end

print(test(5))


--file io
local file = io.open("Test.lua", "a+")
print(file:read())
file:close()

for line in io.lines("Test.lua") do
    print(line)
end

function divide(a, b)
    return a / b
end

print(pcall(divide, 1, 1))
print(pcall(divide, 1, 0))
print(pcall(divide, 1))


