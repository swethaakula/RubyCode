class Methods

  def sample(i=5,j=5)
    puts "prints the sample test"
    return i,j
  end
  alias_method :test, :sample
  undef test
end

met = Methods.new
puts met.test 10,20

def sample1(*test)
  puts "The length of the array #{test.length}"
  for i in 0...test.length
    puts "value of parsed variable #{test[i]}"
  end
end

sample1 "Swetha",45,"@swetha"
sample1 "Rithvik",10,24, 35, 56