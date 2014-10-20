puts "Redefining methods and classes"
class Rectangle
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

# Add an empty method named perimeter
# or area and watch tests break
class Rectangle
    def perimeter
    end

    def area
    end
end

puts Rectangle.new(5,5).perimeter

puts 2 + 4

class Fixnum
    def +(other)
        42
    end
end

puts 2 + 4


puts "\n\n\nOverriding methods and classes"
class MyArray < Array
    def map
        "in soviet russia..."
    end
end

a = Array.new([1, 2, 3])
p a.map { |n| n*2 }

b = MyArray.new([1, 2, 3])
puts b.map { |n| n+1 }


puts "\n\n\nSuper methods and classes"
class Animal
    def move
        "I can move"
    end
end

class Bird < Animal

  alias :super_move:move
    def move
        super + " by flying"
    end

  def shake
     super_move() + " by flying"
  end
end

puts Animal.new.move
puts Bird.new.move
puts Bird.new.shake