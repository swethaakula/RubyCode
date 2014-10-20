$LOAD_PATH << '.'
#$LOAD_PATH<<(File.dirname(__FILE__))

require "module1"

class Moduletest
  include Sample
  no_of_years=10
  def no_of_months
    puts Sample::FIRST_DAY
    number = 10*12
    puts number
  end
end

t1= Moduletest.new
puts t1.no_of_months
puts Sample::FIRST_DAY
Sample.weeks_in_month
Sample.weeks_in_year


module Example1
  def method1
    puts "control is in method1"
  end
  def method2
    puts "control is in method2"
  end
end
module Example2
  def method3
    puts "Control is in method3"
  end
  def method4
    puts "cpntrol is in method4"
  end
end

class Test
  include Example1
  include Example2
  def method5
    puts "control is in method5"
  end
end

t1=Test.new
t1.method1
t1.method2
t1.method3
t1.method4
t1.method5

