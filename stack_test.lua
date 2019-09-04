
Stack = require("stack")

-- push 数字
stack1 = Stack.new()

stack1:push(1)
stack1:push(2)
stack1:push(3)

while (stack1:size() > 0)
do
    print("stack1 now contain number:"..stack1:size())
    print("pop top number:"..stack1:pop())
end

stack2 = Stack:new()

a = {1, 2}
b = {3, 4}
c = {5, 6}

stack2:push(a)
stack2:push(b)
stack2:push(c)

while (stack2:size() > 0)    -- lua中只有nil 和 false 为假
do
    print("stack2 now cotain table:"..stack1:size())
    temp = stack2:pop();
    print("pop top table num 1: "..temp[1].." num 2: "..temp[2])
end


