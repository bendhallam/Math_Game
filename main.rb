require_relative 'Player'
require_relative 'Game'
require_relative 'Question'

# Create Players
puts "Enter name for Player 1:"
player1_name = gets.chomp
puts "Enter name for Player 2:"
player2_name = gets.chomp

player1 = Player.new(player1_name)
player2 = Player.new(player2_name)

# Create Game with two players
game = Game.new(player1, player2)

# Start the game
until game.game_over?
  game.play_turn
  game.switch_turn
end

# Announce winner once game is over
game.announce_winner