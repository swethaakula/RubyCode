class Iterator
end

array1 = [1,2,3,4,5]
array1.each do |i|
  puts i=i+1
end

array2 = [1,2,3,4,5,6]
array3 = Array.new
array3 = array2.collect {|x| x*10}
puts "#{array3}"