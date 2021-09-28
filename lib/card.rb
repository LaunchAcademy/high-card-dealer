class Card

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    if @rank == "J"
      return 11
    elsif @rank == "Q"
      return 12
    elsif @rank == "K"
      return 13
    elsif @rank == "A"
      return 14
    else
      return @rank
    end
  end

  def display_card
    return "#{@rank}#{@suit}"
  end
end

