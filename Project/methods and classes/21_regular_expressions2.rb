original = "My name is Andrew."
new = original.sub /My name is/, "Hi, I'm"
p original
p new

#######################

puts "1234567890".sub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3' # => "(123) 456-7890"

p "WHAT'S GOING ON?".gsub(/\S*/) {|s| s.downcase } # => "what's going on?"