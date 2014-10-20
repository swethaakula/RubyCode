class Blocks
end

def test123
  puts "I am in the method"
  yield
  puts "Again i am in the method"
  yield
end
test123 {puts "I am in the block"}

def test1(a=9,b=7)
  yield "Swetha","Akula"
  puts "Value of a+b is #{a+b}"
  yield a,b
end
test1 {|str1,str2|
  puts "Str is #{str1}"
  puts str1+str2
}
BEGIN{
  puts "Begin code block"
}
END{
  puts "END code block"
}

def test2(&block)
  block.call
end
test2{
  a=10
  b=20
  puts a+b
}