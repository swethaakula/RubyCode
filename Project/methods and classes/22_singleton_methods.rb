
require 'rubysl/singleton'

class Singleton1
 include Singleton
  def test
    puts "Instance is created"
  end
end
#
s = Singleton1.instance
s1 = Singleton1.instance
puts s.object_id
puts s1.object_id
s.test
s1.test



#
# def s.only_to_s
#     puts "can be called only by the object 's'"
# end
#
#
# s.only_to_s
#
# d = Singleton.new
# d.only_to_s





