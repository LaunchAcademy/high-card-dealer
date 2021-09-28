require_relative "card"

class Deck
  
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end

    return cards.shuffle
  end

  def deal (number = 4)
    return @cards.pop(number)
  end

  def display_deck_size
    puts "There are #{@cards.length} cards in the deck"
  end
end
