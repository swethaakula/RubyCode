class Animal

 attr_accessor :noOfLegs

 def cry
   @noOfLegs=2
   puts "test cry" +  "#{noOfLegs}"
 end

 def cry1
   cry
 end
  private :cry
end

class Person <Animal


  def initialize(age)
    @age = age
  end
  def age
    @age
  end
  def cry
    super
  end
  def compare_age(c)

    if c.age > age
      "The other object's age is bigger."
    else
      "The other object's age is the same or smaller."
    end
  end
  protected :age
end

chris = Person.new(25)
marcos = Person.new(34)
#chris.cry
Animal.new.cry1
puts chris.compare_age(marcos)
#puts chris.age