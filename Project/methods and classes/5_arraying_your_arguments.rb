puts "Handle methods and classes which have a variable parameter list."
def add(*numbers)
   numbers.inject(0) { |sum, number| sum + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)


puts "\n\nSplat an array of three numbers"
def add1(a_number, another_number, yet_another_number)
   a_number + another_number + yet_another_number
end

numbers_to_add = [1, 2, 3] # Without a splat, this is just one parameter
puts add1(*numbers_to_add)



puts "\n\nMix parameter lists and splatting."
def add2(*numbers)
   numbers.inject(0) { |sum, number| sum + number }
end

def add_with_message(message, *numbers)
   "#{message} : #{add2(*numbers)}"
end

puts add_with_message("The Sum is", 1, 2, 3)



def add1(message, *args)
    print message + " "
    print args.inject(10) { |sum, i| sum + i }
end

add1("The sum is: ", 1,2,3,4,5)
