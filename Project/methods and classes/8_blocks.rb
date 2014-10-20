=begin
Lambdas vs. Blocks
A lambda is a piece of code that you can store in a variable, and is an object.
The simplest explanation for a block is that it is a piece of code that can't be stored in a
variable and isn't an object. It is, as a consequence, significantly faster than a lambda, but not
as versatile and also one of the rare instances where Ruby's "everything is an object" rule is broken.
=end

def demonstrate_block1()
    yield
end

demonstrate_block1 { puts "dummy block"}

def demonstrate_block(number)
    yield(number)
end

puts demonstrate_block(1) { |number| number + 1 }

puts "\n\nLAMDAS VS BLOCKS"

def calculation_with_explicit_block_passing(a, b, operation)
    operation.call(a, b)
end

def calculation_with_implicit_block_passing(a, b)
    yield(a, b)
end

addition = lambda { |a, b| a + b }
puts calculation_with_explicit_block_passing(5, 5, addition)

puts calculation_with_implicit_block_passing(5, 5) { |a, b| a + b }
