require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative "lib/hand"

#GAME START

# Your game logic here.
deck = Deck.new

puts "GAME START!"
puts "There are #{deck.cards.length} cards in the deck."

# binding.pry
player_1 = Hand.new(deck.deal)


player_2_cards = deck.deal
player_2 = Hand.new(player_2_cards)

player_1_all_cards = []
player_1.cards.each do |card|
    string = "#{card.rank} #{card.suit}"
    player_1_all_cards.push(string)
end


puts "Player 1 was dealt #{player_1_all_cards.join(", ")}"

# binding.pry

puts "Player 1 hand's value: #{player_1.value}"
puts "Player 2 hand's value: #{player_2.value}"

if player_1.value > player_2.value
    puts "Player 1 is the winner!"
elsif player_2.value > player_1.value
    puts "Player 2 is the winner!"
else
    puts "TIE!"
end
