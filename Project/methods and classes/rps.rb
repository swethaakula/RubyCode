class RPS

    #initialize two class variables to keep track of
    @@computer_win_count = 0# a) computer win count
    @@human_win_count = 0 # b) human win count

    def initialize
        @game = ["rock", "paper", "scissors"]#initialize an array with rock paper and scissors
    end

    def self.get_human_wins_count
        @@human_win_count #returns the human win count
    end

    def self.get_computer_wins_count
        @@computer_win_count #returns the computer win count
    end

    def get_random_hand
       @computer_hand = @game[rand(3)] #get a random hand (rock or paper or scissors)
        #use the rand function
        #assign it to an instance variable
    end

    def decide_winner(human_hand)
        p @computer_hand
        p human_hand
        if @computer_hand == "rock" and human_hand == "paper"
            @@human_win_count += 1#using the random computer hand and human hand
        elsif @computer_hand == "rock" and human_hand == "scissors"
            @@computer_win_count += 1
        elsif @computer_hand == "paper" and human_hand == "rock"
            @@computer_win_count += 1
        elsif @computer_hand == "paper" and human_hand == "scissors"
            @@human_win_count += 1
        elsif @computer_hand == "scissors" and human_hand == "rock"
            @@human_win_count += 1
        elsif @computer_hand == "scissors" and human_hand == "paper"
            @@computer_win_count += 1


        end
        #decide the winner and increment either the human win or computer win count
    end

end
game = RPS.new

while RPS.get_human_wins_count < 10 #condition to check if human count is less than 10
      puts ("Enter Rock Paper or Scissors")#get user input
      i = gets.chomp #get random hand
      game.get_random_hand #decide winner
      game.decide_winner(i)
      p "Human Win Count " + RPS.get_human_wins_count.to_s
      p "Computer Win Count " + RPS.get_computer_wins_count.to_s

end



