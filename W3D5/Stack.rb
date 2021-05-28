class Stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        return @stack[-1]
    end

end

s = Stack.new
s.push(1)
s.push(2)
s.push(3)
s.push(4)
p s.peek
s.pop
s.push(5)
p s.pop
