
puts 1.method("next")

#Here, we ask the object that is the integer 1 to give us the instance of the method next.

next_method_object = 1.method("next")
puts next_method_object.class
p next_method_object.methods.sort
puts next_method_object.call