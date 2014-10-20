class OperatorOverLoading
end

class Box
  def initialize(w,h)
    @width,@height = w,h
  end

  def getWidth
    @width
  end

  def getHeight
    @height
  end

  def +(var)
    puts "Addition overload"
   box3 = Box.new(@width+var.getWidth,@height+var.getHeight)
    puts box3.getWidth
    puts box3.getHeight
  end

  def -@
    box4=Box.new(-@width,-@height)
    puts box4.getWidth,box4.getHeight
  end

  def *(scalar)
   box5=Box.new(@width*scalar, @height*scalar)
    puts box5.getWidth
    puts box5.getHeight
  end
end


box1 = Box.new(10,15)
box2 = Box.new(5,5)
box1+box2
-box1
box1*(2)