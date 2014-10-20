class Exceptions
end

=begin
begin
  file=File.open("/unexistant.txt","r+")
  if file
    puts "file opened successfully."
  end
rescue
  file =File.open("input.txt","r+")
  #retry
end
=end

begin
  puts "Before Raise"
  raise "Exception is raised"
  puts "After Raise"
rescue
  puts "I am rescued"
end
 puts "I am after the begin block"
##################################
begin
  #raise "An excpetion is raised"
  puts "I am not raising exception"
  rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
    puts "AweSome No error!!!"
ensure
  puts "Ensuring execution"
end

################################
def promptAndGet(prompt)
  print prompt
  res = readlines.chomp
  throw :quitRequested if res=="!"
  return res
  end

catch :quitRequested do
  name = promptAndGet("Name: ")
  age = promptAndGet("Age: ")
  sex = promptAndGet("Sex: ")
end
puts promptAndGet("Name: ")
