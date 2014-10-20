# class DateAndTime
# end
#
# currentTime = Time.now
# puts "Current time: #{currentTime.inspect}"
# puts "Current Year: #{currentTime.year}"
# puts "current month: #{currentTime.month}"
# puts "day of the date: #{currentTime.day}"
# puts "Week day of the date: #{currentTime.wday}"
# puts "day of the year: #{currentTime.yday}"
# puts "current hour: #{currentTime.hour}"
# puts "current minute: #{currentTime.min}"
# puts "current second: #{currentTime.sec}"
# puts "current milli seconds: #{currentTime.usec}"
# puts "current time zone: #{currentTime.zone}"
# puts currentTime.utc_offset
# puts currentTime.isdst
# puts currentTime.utc?
# puts currentTime.localtime
# puts currentTime.gmtime
# puts currentTime.getlocal
# #puts currentTime.getutc
# puts "~~~~~~~~~~~~formatting date and time~~~~~~~~~~~~~"
# puts currentTime.to_s
# puts currentTime.ctime
# puts currentTime.localtime
# puts "#{currentTime.strftime("%Y-%m-%d %H:%M:%S")}"
# puts "#{currentTime.strftime("%I")}"
# puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# puts Time.local(2014,6,30)
# puts Time.local(2014,6,30,17,42)
# puts Time.utc(2014,6,30,17,43)
#
# timeArray = Time.new
# values = timeArray.to_a
#
# puts "#{values}"
# puts Time.utc(*values)
# epoch_time = Time.new.to_i
# puts epoch_time
# puts Time.at(epoch_time)
# epoch_sec = Time.new.to_f
# puts epoch_sec

require "date"

date= "18 july 2014"
d = Date.parse("18 july 2014")
puts d.month




