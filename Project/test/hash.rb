class Hash
end

months = Hash.new("month")

puts "#{months[0]}"
puts "#{months[10]}"

h=Hash["a"=>100,"b"=>200]
h1=Hash[[1,"jan"] => "January"]
puts h1[[1,"jan"]]
puts "#{h['a']}"
puts "#{h['b']}"

months1 = Hash.new("month")
months1 = {"1"=>"January","2"=>"February"}
keys = months1.keys
puts "#{keys}"
values = months1.values
puts "#{values}"
puts "#{months1['1']}"
months1['3']="March"
puts "#{months1["3"]}"
puts "#{months1.index("January")}"
puts months1.select("January","February")
months1.clear
months1.default = "default"
puts "#{months1['1']}"



