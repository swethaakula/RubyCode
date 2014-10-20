class FileIO
end

puts "Enter value to print"

value=gets()
i=0
while i<value.length
  putc value[i]
  i+=1
end
###################################
print "Good morning \n"
print "Good evening"
#######################################

=begin
path=File.expand_path(__FILE__+"/..")
puts path
Dir.chdir(path)
=end

aFile = File.new("input.txt",'r+')
if aFile
  aFile.syswrite(" This is the syswrite method writing")
  aFile.each_byte{
    |ch| putc ch; putc ?.

  }
else
  puts "File is not opened"
end

###########################
puts "\n"
array1=IO.readlines("input.txt")
i=0
while i<array1.length

puts array1[i]
  i+=1
end
#####################################
IO.foreach("input.txt"){|block| puts block}
###############################
=begin
File.rename("output.txt","output1.txt")
File.delete("output1.txt")
=end


##################

file1 = File.open("input.txt","r+") if File.exist? ("input.txt")
file1.syswrite("xyz")

puts File.file?("input.txt")
puts File::directory?("input.txt")
puts File::directory?("E:/Ruby/Project/test/")

puts File.readable?("input.txt")
puts File.writable?("input.txt")
puts File.executable?("input.txt")
puts File.zero?("input.txt")
puts File.size?("input.txt")
puts File.ftype("input.txt")
puts File.ftype("E:/Ruby/Project/test/")
puts File.ctime("input.txt")
puts File.mtime("input.txt")
puts File.atime("input.txt")
File.close



