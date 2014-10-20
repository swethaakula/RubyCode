class ConditionalMethod4
  x=1
  if x>2
    puts "x is greater than 2"
  elsif x<2 and x!=0
    puts "x is 1"
  else
    puts "x is negative"
  end
end

$global = 1
print "$global\n" if $global

numArray = Array.new(2)
numArray = ["Swetha","Akula"]
x=2
puts "#{numArray}\n" if x

y=4

unless y>4
  puts "Y is less than 4"
else
  puts "y is greater than 4"
end


$var=1
puts "1 value is set\n" if $var
puts "2 value is set\n" unless $var

$var= false
puts "3 value is set" unless $var



$age=6

case $age
  when 0..2
    puts "baby"
  when 3..6
    puts "little child"
  when 7..12
    puts "child"
  when 13..18
    puts "youth"
  else
    puts "adult"
end


