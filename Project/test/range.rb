class Range
end

range1 = (0..10)
array1 = range1.to_a
puts "#{array1}"

range2 = ("bar".."bay")
array2 = range2.to_a
puts "#{array2}"

digits = 0..9

puts digits.include?(5)
puts digits.max
puts digits.min

values = digits.reject {|i| i<5}
puts "rejected values are #{values}"

digits.each do |element|
  element1 = element
  element1=element1+element
  puts "in loop #{element1}"
end

score=75
result=case score
         when 0..40; "Fail"
         when 41..60; "Pass"
         when 61..70; "Merit"
        when 71..100;"Distinction"
           else "Invalid score"
       end
puts result

if((0..10)===5)
  puts "5 lies in the range"
end

if(('a'..'j')==='f')
  puts "f lies in the range"
end

if(('a'..'g')==='x')
  puts "x lies in the range"
end