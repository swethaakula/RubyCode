# def fib_upto(max)
#   i1, i2 = 1, 1
#   while i1 <= max
#     yield i1
#     i1, i2 = i2, i1+i2
#   end
# end
#
# fib_upto(100) {|f| print f, " "}

def isPrimeNumber(number)
  i=2
  while i<number/2
    is_divisible = ((number % i) == 0)
   # puts is_divisible
    if is_divisible
      return false
    end
    i += 1
  end
  return true
end

if isPrimeNumber(18)
  puts "Given number is n prime"
else
  puts "Given number is not prime"
end