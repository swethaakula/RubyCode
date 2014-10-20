$var1 = 200
class GlobalVariable
  def showGlobalVariable
    puts "Global Varible display from GlobalClass #$var1"
  end
end

class GlobalVariable1
  def showGlobalVariable1
    puts "Global Varible display from GlobalClass1 #$var1"
    puts "It is not good practise to use global variables in programming language"
  end
end

gb = GlobalVariable.new
gb.showGlobalVariable
gb1 = GlobalVariable1.new
gb1.showGlobalVariable1