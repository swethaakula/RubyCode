#reserse String program
# #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# def reverseString(inputString)
#   reversedString = ""
#   for i in 0..(inputString.length-1)
#     reversedString = (inputString[i])+ reversedString
#     puts reversedString
#   end
#   return reversedString
# end

# puts reverseString("I Love Ruby")
#palindrome program
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# #
# # def isPalindrome(inputString)
# #   if reverseString(inputString)== inputString
# #     puts "#{inputString} is palindrome"
# #   else
# #     puts "#{inputString} is not palindrome"
# #   end
# # end
# #
# # #isPalindrome("I Love Ruby")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#palindrome different appraoch
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# def isPalindrome(inputString)
#   stringLen = inputString.length
#
#   for i in 0..(stringLen)/2
#     if (inputString[i] == inputString[stringLen-1-i])
#       isPalindromeVar = true
#     else
#       isPalindromeVar = false
#       break
#     end
#   end
#   if isPalindromeVar
#     puts "#{inputString} is palindrome"
#   else
#     puts "#{inputString} is not palindrome"
#   end
# end
#
# isPalindrome("1221")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#reverse String with ruby methods
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# def reverseString(inputString)
#   reverseString = ""
#   inputString.each_char  { |character|
#     reverseString =  character + reverseString
#     }
#   return reverseString
# end
#
# puts reverseString("I love Ruby")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# String split function
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# def reverseString(inputString)
#   reversedString = ""
#   inputStringArray = inputString.split("")
#   inputStringArray.each { |c|
#     reversedString = c + reversedString
#   }
#   return reversedString
# end
# puts reverseString("This is it!!!!")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#print even and odd numbers
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#
# def printEvenOddArray(inputArray)
#   evenArray = []
#   oddArray = []
#   inputArray.each { |e|
#     if e%2 == 0
#       evenArray = evenArray << e
#     else
#       oddArray = oddArray << e
#     end
#   }
#   puts evenArray.inspect
#   puts oddArray.inspect
# end
#
# printEvenOddArray(inputArray)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Hash map key value pairs output
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=begin
hash_example1 = Hash["string" => "Swetha", "fixNum" => 13, "array" => [1,2,3,4,5], "hash" => Hash["a" =>10]]

def printHashElementsClass(hash_example)
  hash_example.each{|key,value|
      if key == "string"
        puts "string class is #{value.class}"
      elsif key == "fixNum"
        puts "fixNum class is #{value.class.superclass}"
      elsif key == "array"
        puts "array class is #{value.class}"
      elsif key == "hash"
        puts "hash class is #{value.class}"
      end
  }
end
=end
#
# printHashElementsClass(hash_example1)

# hash_example1 = Hash["string" => "Swetha", "fixNum" => 13, "array" => [1,2,3,4,5], "hash" => Hash["a" =>10]]
#
# def printHashElementsClass(hash_example)
#   hash_example.each{|key,value|
#     if key == "fixNum"
#       puts "#{key} class is #{value.class.superclass}"
#     else
#       puts "#{key} class is #{value.class}"
#     end
#
#   }
# end
#
# printHashElementsClass(hash_example1)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Hash map key value pairs output with case statement
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# hash_example1 = Hash["string" => "Swetha", "fixNum" => 13, "array" => [1,2,3,4,5], "hash" => Hash["a" =>10]]
#
# def printHashElementsClass(hash_example)
#   hash_example.each {|key,value|
#     case key
#       when "string"
#         puts "string class is #{value.class}"
#       when "fixNum"
#         puts "fixNum class is #{value.class.superclass}"
#       when "array"
#         puts "array class is #{value.class}"
#       when "hash"
#         puts "hash class is #{value.class}"
#       else
#         puts "out of range"
#     end
#   }
# end
#
# printHashElementsClass(hash_example1)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# roman numbers program
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=begin
def printNumbers(romanNumber)
  finalNumber =0
  romanHash = Hash["I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000]

  for i in 0..romanNumber.length-1
    if (i != romanNumber.length-1)
      if (romanHash[romanNumber[i]] >= romanHash[romanNumber[i+1]])
        finalNumber = finalNumber + romanHash[romanNumber[i]]
      else
        finalNumber = finalNumber - romanHash[romanNumber[i]]
      end
    end
  end
  finalNumber= finalNumber+romanHash[romanNumber[romanNumber.length-1]]
  return finalNumber
end

puts printNumbers("MMMCMXCIX")
=end
=begin
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
contract1 = %w{ranjith is a bad boy}
# contract2 = %w{swetha is a good girl}
# contract3 = %w{rithvik is a good boy}
puts contract1.inspect
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
def sortArray(contractArray)
  finalArray = []
  for i in 0...contractArray.length
    for j in i...contractArray.length
      returnValue = contractArray[i] <=> contractArray[j]
      if returnValue == -1
        tempValue = contractArray[i]
        contractArray[i] = contractArray[j]
        contractArray[j] = tempValue
      end
    end
  end
  return contractArray
end
  puts sortArray(contract1)
=end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Date print program
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

=begin
require 'date'

puts Time.now
puts Time.now + 120
puts Time.now - (60*60*24*2)

d= Date.today
puts Time.now.strftime('%m/%d/%Y %I:%M')
#d = DateTime.new
#puts Date.strptime('10/17/2014 18:30','%m/%d/%Y %H:%M')
=end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#print number in string
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
=begin

def printNumberString(inputNumber)
  resultString = ""
  tensQuotient = 0
  tensReminder = 0
  numberHash = Hash[1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight",
                    9 => "nine", 10 => "ten", 11 => "eleven", 12 => "tweleve", 13 => "thirteen", 14 => "foruteen", 15 => "fifteen", 16 => "sixteen",
                    17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty"]

  hundredQuotient = inputNumber/100
  hundredReminder = inputNumber%100
  if (hundredQuotient > 0)
    resultString = numberHash[hundredQuotient] + " hundred"
  end

  if (hundredReminder <20)
    resultString = resultString+ " "+numberHash[hundredReminder]
  else
    tensQuotient = hundredReminder/10
    tensReminder = hundredReminder%10
    if (tensQuotient > 0)
      resultString = resultString +" " + numberHash[tensQuotient*10]
    end
    if(tensReminder !=0)
      resultString = resultString +" "+ numberHash[tensReminder]
    end
  end
  return resultString
end
=end
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Reading data from CSV file
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#fileName = "__FILE__+/../../../../samatha/myFamilyData.csv"

=begin
fileName = "E:\\samatha\\myFamilyData.csv"
def fileReadMethod(fileName)
  i=0
  headerHash = Hash.new()
  outputArray = []
  File.open(fileName).each do |line|
    wordsArray = line.split(',')
    if i==0
      for j in 0...wordsArray.length
        headerHash[j]=wordsArray[j]
      end
    else
      wordsHash = Hash.new()
      for j in 0...wordsArray.length
        wordsHash[headerHash[j]]=wordsArray[j]
      end
      outputArray << wordsHash
    end
    i+=1
  end
  puts outputArray.inspect
end
fileReadMethod(fileName)
=end
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#read excel file
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# require 'roo'
#
# fileName = "E:\\samatha\\familyData.xlsx"
#
# def readDataFromExcel(fileName)
#   outputArray = []
#   workBook = Roo::Excelx.new(fileName)
#   workBook.default_sheet = workBook.sheets[0]
#   headerMap = Hash.new
#   workBook.row(1).each_with_index { |header,i |
#     headerMap[i] = header
#   }
#   puts headerMap
#   for i in 2..workBook.last_row
#     rowHash = Hash.new()
#     for j in 1..workBook.last_column
#      rowHash[headerMap[j-1]] = workBook.cell(i,j)
#     end
#     outputArray << rowHash
#   end
#   return outputArray
# end
# puts readDataFromExcel(fileName)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Biggest palindrome with two 3 digits numbers
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# def printPalindrome()
#   for number1 in (99).downto(0)
#     for number2 in number1.downto(0)
#       finalNumber = number1 * number2
#       numberString = finalNumber.to_s
#       if numberString.reverse == numberString
#         break;
#       end
#     end
#     if numberString.reverse == numberString
#       break;
#     end
#   end
#   puts number1
#   puts number2
#   return numberString
# end
# puts printPalindrome()

