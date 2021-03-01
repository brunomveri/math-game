require './player.rb'
require './questions.rb'

puts "Starting the game..."

class Game 

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def play

    while @player1.is_alive? && @player2.is_alive? do
      question = Questions.new

      print question.asking_question(@current_player.name)
      print ">>> "

      user_input = gets.chomp

      if question.is_correct?(user_input.to_i)
        puts "Yes! You are correct."
      else
        puts "Seriously? No!"
        @current_player.answered_wrong
      end

      puts "P1: #{@player1.life}/3 vs. P2: #{@player2.life}/3"

      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
        
      puts "---New Turn---"
    end
    
      if @player1.is_dead?
        puts "Player 2 wins with a score of #{@player2.life}/3"
      else
        puts "Player 1 wins with a score of #{@player1.life}/3"
      end

      puts "Game Over!"
      puts "Good bye"
      
    end
end
