class Strings
  def delimitString
    puts %{Ruby is fun}
    puts %Q{Ruby is fun}
    puts %q[Ruby is fun]
   end
end
s1=Strings.new
s1.delimitString

myStr=String.new("this is test")
mystr1=/TEST/
puts myStr.downcase
puts mystr1=~'THIS IS TEST'
puts myStr.capitalize
puts myStr.count("s","is")
