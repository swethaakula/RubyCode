=begin
    a lambda is just a function... peculiarly... without a name.
    They're anonymous, little functional spies sneaking into the rest of your code.
    Lambdas in Ruby are also objects, just like everything else!
=end

l = lambda do |string|
    return "argument string is #{string}"
end

puts l.call("1")

l1 = lambda do |string|
    if string == "try"
        return "There's no such thing"
    else
        return "Do or do not."
    end
end
puts l1.class
p l1.methods.sort
puts l1.call("Try") # Feel free to experiment with this

increment = lambda { |number|  number + 1 } # your lambda between the braces
puts increment.call(1)