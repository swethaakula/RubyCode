def add(a_number, another_number)
    a_number + another_number
end

puts add(1, 2)

def add1(a_number, another_number, yet_another_number)
    a_number + another_number + yet_another_number
end

puts add1(1, 2, 3)

def add2(a_number, another_number, yet_another_number = 0)
    a_number + another_number + yet_another_number
end

puts add2(1, 2)