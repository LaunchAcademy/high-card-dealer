class Hand
    attr_reader :cards
    
    def initialize(card_objects)
        @cards = card_objects
    end

    def value
        total_value = 0

        @cards.each do |card|
            # binding.pry
            total_value += card.value
        end

        return total_value
    end
end