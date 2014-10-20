module Shapes

    def perimeter
        get_sides.inject(0) {|sum, side| sum+side}
    end
end

class Rectangle
    include Shapes

    attr_accessor :sides,:length, :breadth

    def initialize(length, breadth)
        @length = length
        @breadth = breadth
    end

    def get_sides
        @sides = [@length, @breadth, @length, @breadth]
    end
end

class Square
    include Shapes

    attr_accessor :sides, :side

    def initialize(side)
        @side = side
    end

    def get_sides
        @sides = [@side, @side, @side, @side]
    end
end

class Triangle
    include Shapes

    attr_accessor :sides, :side1, :side2, :side3

    def initialize(side1, side2, side3)
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end

    def get_sides
        @sides = [@side1, @side2, @side3]
    end
end

shapes = []
shapes[0] = Rectangle.new(5,6)
p shapes[0].perimeter
shapes[1]=Square.new(5)
p shapes[1].perimeter