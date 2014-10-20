puts [4, 8, 15, 16, 23, 42].count
puts [4, 8, 15, 16, 23, 42].size
puts [4, 8, 15, 16, 23, 42].length

puts "\n\ncount"
puts "count also takes in a block and returns
the number of elements in the array for which the block results to true.
Find out the number of even numbers in this array"
p [4, 8, 15, 16, 23, 42].count { |e| e % 2 == 0 }

puts "\n\nindex"
puts "The index method returns
the index of the object specified. If a block is
given it returns the index of the first element for which the block results to true"
puts [4, 8, 15, 16, 23, 42].index(15)
puts [4, 8, 15, 16, 23, 42].index { |e| e % 2 == 0 }

puts "\n\nflatten"
puts "The flatten method returns a one-dimensional array representation of the array.
It recursively picks out all elements from the inner-arrays and
lays them out in the outermost array"
p [4, 8, 15, 16, 23, 42].flatten
p [4, [8], [15], [16, [23, 42]]].flatten
p [4, [8], [15], [16, [23, 42]]].flatten(1)

puts "\n\nCompact"
puts "The compact method returns a new array with all the nil elements removed"
p [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil].compact

puts "\n\nzip"
puts "The zip method expects variable number of arguments and returns an array of arrays
that contain corresponding elements from each array
. That is, an element-wise merge with the original array."
p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])

puts "\n\nslice"
puts "slice is same as using the literal [] form for extracting subarrays
It accepts an index, like array[2] or a Range, like array[2..7]"
p [4, 8, 15, 16, 23, 42].slice(2)
p [4, 8, 15, 16, 23, 42].slice(2..5)

puts "\n\njoin"
puts "join is useful for joining all the array elements into a string.
You can add a separator between by specifying it as a String argument"
p [4, 8, 15, 16, 23, 42].join(", ")

puts "\n\nshift"
puts "shift removes the first element of the array and returns it. Shifts the rest
of the array towards left, such that
the second element becomes the first element, the third element becomes the second one and so on.
You can also specify an optional argument -- shift(n) that will remove and return an array of the first n elements."

p [4, 8, 15, 16, 23, 42].shift
p [4, 8, 15, 16, 23, 42].shift(2)

puts "\n\nunshift"
puts "unshift takes a variable number of arguments and adds them to the beginning of the array."
p [8, 15, 16, 23, 42].unshift(4)
p [16, 23, 42].unshift(4, 8, 15)