

path = File.expand_path(__FILE__ + "/../files/")

Dir.chdir(path)


file = File.open("friend-list.txt", "r")
puts file.read
file.close

# file = File.open("friend-list.txt", "a")
# file.puts "GROW"
# file.puts "HAT"
# file.close







#####################
File.open("clean-slate.txt", "w") do |file|
   file.puts "Writing to File"
end

File.open("clean-slate.txt", "r") {|file| puts file.read }


#####################


file = File.open("master.txt", "r+")

p file.read
file.rewind

bucket = ""
file.read(6, bucket)
p bucket

file.close

File.open("master.txt") do |f|
    f.seek(11, IO::SEEK_SET)
    p f.read(6)
end

lines = File.readlines("friend-list.txt")
p lines
p lines[0]



#############################
#
#
#p File.read("master.txt")
#
#File.open("master.txt") do |f|
#    f.seek(20, IO::SEEK_SET)
#    p f.read(10)
#end
###############################
#lines = File.readlines("friend-list.txt")
#p lines
#p lines[0]