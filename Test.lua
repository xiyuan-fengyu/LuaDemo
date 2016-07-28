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














