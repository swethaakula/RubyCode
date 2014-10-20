=begin
class Array
  array1=["Swetha",2.5,5,"String","last one"]
  array1.each do |i|
    puts "The i value is #{i}"
  end
end
=end
=begin

class Arrays
  numbers = Array.new(7,"swetha")
# numbers = [1,2,3,4,5,6,7]
  numbers.each do |i|
    puts "The value is #{i}"
  end
  puts numbers.size
  puts numbers.length
end
=end

class Array123
=begin
  assign=Array.new(7) {|e| e=e*2 }
  puts "#{assign}"
=end
  digits=Array.new(10)
  digits=[1,2,3,4,"Ruby",78,"Geetha"]
  digits1= Array.[](1,2,3,4,5,"Swetha","Ruby")
  puts digits1.length
  puts "#{digits&digits1}"
  puts "#{digits.at(2)}"
#  puts "#{digits}"
end

arr = Array.new(10){|e| e=e*2}
puts "#{arr}"


