class Constants
  VAR1 = 300
  VAR2 = 250
  def showConstants
    puts "constant1 is #{VAR1}"
    puts "constant1 is #{VAR2}"
    puts "escape \"s\""
    puts 'That\'s right'
    puts "Muliplication value is: #{60*60}"
  end
end

const = Constants.new
const.showConstants

