class Queue
    attr_reader :array

    def initialize
        @array = []
    end

    def enqueue(el)
        array.unshift(el)
        el
    end

    def dequeue
        array.pop
    end

    def peek
        array.last
    end
end