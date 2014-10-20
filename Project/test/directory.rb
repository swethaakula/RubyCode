class Directory
end

path= File.expand_path(__FILE__+"/../")
Dir.chdir(path)
puts path
puts Dir.pwd
Dir.foreach(path) do |entry|
  puts entry
end
#Dir.mkdir("test1")
Dir.delete("test1")