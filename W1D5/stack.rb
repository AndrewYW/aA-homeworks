class Stack
    attr_reader :array
    def initialize
        @array = []
    end

    def push(el)
        array << el
        el
    end

    def pop
        array.pop
    end

    def peek
        array.last
    end
end