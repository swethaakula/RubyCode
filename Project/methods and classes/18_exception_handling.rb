a  = 10
b = 0

begin
    c = a/b
rescue Exception => e
    puts e.inspect
    puts "please dont try to divide by 0"
end

############################

begin
    f = File.open("friend-list.txt","r")
rescue Exception => e
    puts e.inspect
ensure
    puts "this block is executed"
end

begin
    a = Single.new
rescue  Exception => e
    puts "Single class does not exist"
ensure
    puts "please create Single class"
end
