def add(a_number, another_number, options = {})
    sum = a_number + another_number
    sum = sum.abs if options[:absolute]
    sum = sum.round() if options[:round]
    sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, {:absolute => true})
puts add(1.0134, -5.568, {:absolute => true, :round => true})