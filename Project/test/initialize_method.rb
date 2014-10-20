class InitializeMethod
end

class Box
  attr_accessor :width, :height
  @@count = 0
  BOX_COMPANY = "Amazon"
  BOX_WEIGHT = 20
  def initialize(w,h)
    @width, @height=w,h
    @@count +=1
  end

=begin
  def getWidth
    @width
  end

  def getHeight
    @height
  end

 # private :getWidth, :getHeight

  def setWidth=(value)
    @width=value
  end

  def setHeight=(value)
    @height=value
  end
=end

  def getArea
    @width * @height
  end

 # protected :getArea

  def self.getCount
    @@count
  end

  def to_s
    "width:#{@width},height:#{@height}"
  end
end

class BigBox < Box
  def getArea
    @Area=@width * @height
    puts " Area of the box is : #{@Area}"
  end
end

box1 = Box.new(10,20)
box2 = BigBox.new(10,5)

=begin
puts box1.getWidth
puts box1.getHeight
=end

=begin
box1.setWidth =25
box1.setHeight =20
=end

=begin
puts box1.getWidth
puts box1.getHeight
=end

a = box1.getArea()
puts "Area of the box #{a}"

no = Box.getCount
puts "No. of box objects #{no}"
puts "String form of box is : #{box1}"

puts box2.getArea

=begin
box1.freeze
if(box1.frozen?)
  puts "Box1 object is frozen"
else
  puts "Box2 object is not frozen"
end
=end

#puts box1.getWidth,box1.getHeight
# box1.setWidth = 11
# box1.setHeight =12

puts Box::BOX_COMPANY
puts "Box weight is #{Box::BOX_WEIGHT}"

puts "Width of box1 #{box1.width}"
puts "Height of box1 #{box1.height}"

box1.width = 100
box1.height = 200

puts "Width of box1 #{box1.width}"
puts "Height of box1 #{box1.height}"

box3 = Box.allocate
box3.getArea