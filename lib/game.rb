class Game
  attr_reader :player1_hand, :player2_hand

  def initialize(game_deck)
    @game_deck = game_deck
    @player1_hand
    @player2_hand
  end

  def deal_hands
    @player1_hand = Hand.new(@game_deck.deal)
    @player2_hand = Hand.new(@game_deck.deal)
  end

  def determine_winner
    if @player1_hand.value > @player2_hand.value
      puts "Player 1 wins the game!"
    elsif @player2_hand.value > @player1_hand.value
      puts "player 2 wins the game!"
    else
      puts "It's a tie!"
    end
  end
end