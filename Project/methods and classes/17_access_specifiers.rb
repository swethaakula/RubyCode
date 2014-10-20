puts "Redefining methods and classes"

module A
    def method_missing(*args, &block)
        puts "method is not there"
    end
end


class Rectangle
     include A

    def initialize(length, breadth)
        @length = length
        @breadth = breadth
    end

    def perimeter
        2 * (@length + @breadth)
    end

    def area
        @length * @breadth
    end

end

class Square < Rectangle
    def initialize(side)
        @length = @breadth = side
    end
end

s = Square.new(5)
s.sadsaadasd


