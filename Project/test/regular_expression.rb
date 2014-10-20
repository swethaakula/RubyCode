class RegularExpression
end

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if(line1 =~ /Cats(.*)/)
  puts "Line1 has cats word"
end
if (line2 =~/Dogs(.*)/)
 puts "line2 contains dogs"
end

phone = "2004-959-559 #This is Phone Number"

phone = phone.sub!(/#.*$/,"")
puts "removes comment from the phone number #{phone}"

#removes other than digits
phone = phone.gsub(/\D/,"")
puts "phone number :#{phone}"

text = "rails are rails, really good Ruby on Rails"
text = text.gsub!("rails","Rails")
puts "#{text}"

text = text.gsub!(/\brails\b/,"Rails")
puts "#{text}"
