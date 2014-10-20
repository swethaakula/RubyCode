class Rectangle
end

=begin
    This class is as yet incomplete. For a class to justify its existence, it needs to have two distinct features:

    State
    A class must have some kind of state that defines the attributes of its instances.
    In the case of a simple rectangle, this could simply be its length and breadth.

    Behaviour
    A class must also do something meaningful. This is achieved by
    the programmer adding methods and classes to the class that interact with its
    state to give us meaningful results.
=end

class Rectangle
    def perimeter
    end
end

class Rectangle
    def perimeter
        2 * (@length + @breadth)
    end
end

=begin
    You'll notice that the variable names length and breadth have an @
    symbol placed in front of them. This is a convention which designates them as
    being a part of the state of the class, or to use jargon, they are the "instance
    variables of the class." This means that every instance of the class Rectangle will
    have its own unique copies of these variables and is in effect, a distinct rectangle.
=end

class Rectangle
    @@number_of_rectangles = 0

    def initialize(length, breadth)
        @length = length
        @breadth = breadth
        @@number_of_rectangles += 1
    end

    def self.get_numbers_of_rectangles
        @@number_of_rectangles
    end

    def perimeter
        2 * (@length + @breadth)
    end

    def area
        @length * @breadth
    end
end

rectangle = []
for i in 0...100
    rectangle[i] = Rectangle.new(5,5)
end

puts Rectangle.get_numbers_of_rectangles




