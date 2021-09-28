require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative "lib/hand"
require_relative "lib/game"

#GAME START

puts "GAME STARTS!"
puts 

game_deck = Deck.new

game_deck.display_deck_size
puts

game = Game.new(game_deck)

game.deal_hands

puts "Player 1 was dealt #{game.player1_hand.display_cards}"
puts "Player 2 was dealt #{game.player2_hand.display_cards}"
puts

puts "Player 1's hand value: #{game.player1_hand.value}"
puts "Player 2's hand value: #{game.player2_hand.value}"
puts

game.determine_winner

# binding.pry