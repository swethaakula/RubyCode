=begin
class Loops
  i=0
  num=5
  while i<num
    puts "i value is #{i}"
    i+=1
  end
end

class Loops
  i=0
  num=4
  begin
    puts "i value is inside #{i}"
    i +=1
  end while i<num
end

class UntilLoop
 i=0
 num=6
  begin
    puts "i value is #{i}"
    i=i+1
  end until i>num
end
=end

class ForLoop
  for i in 0..5
    if(i>3)
      break
    end
    puts "value is #{i}"
  end
end

class EachLoop
  (0..4).each do |i|
    if(i<3)
      next
    end
    puts "i value is #{i}"
  end
end
