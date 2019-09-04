
-------- Lua模拟栈

stack = {}
stack.__index = stack

function stack:new()
    local o = {}
    setmetatable(o, stack)
    stack:init()
    return o
end

function stack:init()
    self.stackList = {}
end

function stack:clear()
    self.stackList = {}
end

function stack:reset()
    self:init()
end

function stack:pop()
    if #self.stackList == 0 then
        return 
    end

    -- table.remove缺省的情况下删除最后一个参数
    return table.remove(self.stackList)
end

function stack:push(x)
    table.insert(self.stackList,x)
end

function stack:size()
    return #self.stackList
end

return stack