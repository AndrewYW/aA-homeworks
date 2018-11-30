class Map
    attr_reader :array
    def initialize
        @array = []
    end

    def set(key, value)
        idx = array.index{ |el| el[0] == key}

        if idx.nil?
            array.push([key, value])
        else
            array[idx][1] = value
        end
        value
    end

    def get(key)
        array.each{ |el| return el[1] if el[0] == key}
    end

    def delete(key)
        val = get(key)
        array.reject!{|el| el[0] == key}
        val
    end

    def show
        deep_dup(array)
    end

    def deep_dup(arr)
        arr.map{|el| el.is_a?(Array) ? deep_dup(el) : el}
    end
end