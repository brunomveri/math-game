require './player'
require './questions'

puts "Starting the game..."

class Game 

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def play

    