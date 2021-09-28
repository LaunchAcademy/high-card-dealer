class Hand

    def initialize(cards)
        @cards = cards
    end

    def value
        total_value = 0
        @cards.each do |card|
            total_value += card.value
        end
        
        return total_value
    end

    def display_cards
        stringified_cards = ""
        @cards.each_with_index do |card, index|
            if @cards.length - 1 == index
                stringified_cards += "#{card.display_card}"
            else
                stringified_cards += "#{card.display_card}, "
            end
        end
        
        return stringified_cards
    end
end