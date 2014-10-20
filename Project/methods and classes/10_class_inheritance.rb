class MyArray < Array
end

=begin
    Pay special attention to the syntax - the <
    operator informs Ruby that when creating the class MyArray,
    it should set Array as its superclass.
=end

class Rectangle
    def initialize(length, breadth)
        @length = length
        @breadth = breadth
    end

    def perimeter
        2 * (@length + @breadth)
    end
    alias_method :bar, :perimeter
    alias_method :foo, :perimeter

end

# Create a class Square here
class Square < Rectangle
    def initialize(side)
        super(side,side)
        puts "called Rectangle's contructor"
    end
end

puts Rectangle.new(3,5).perimeter
puts Square.new(5).bar