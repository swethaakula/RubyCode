# a method that return an integer
def reverse_sign(an_integer)
     return 0 - an_integer
end

puts reverse_sign(100)
puts reverse_sign(-5)
puts reverse_sign(5).class

#a method that does nothing
def do_nothing
end

puts do_nothing.class

#a method that does return nothing
def demonstrate_early_return
    return
    puts "You will never see this, because we never get here."
end

puts demonstrate_early_return.class


