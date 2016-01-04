class Card
    attr_accessor :rank, :suit
    
    def initialize(rank, suit)
        self.rank = rank
        self.suit = suit
    end

    def output_card
        puts "#{self.rank} of #{self.suit}"
    end

    
end

class Deck
    def initialize
    @cards = []
    @ranks = [1,2,3,4,5,6,7,8,9,10,:jack,:queen,:king,:ace]
    @suits = [:diamonds,:hearts,:clubs,:spades]
    @ranks.each do |rank|
    @suits.each do |suit|
    @cards << Card.new(rank, suit)
      end
    end
end

    def shuffle
        @cards.shuffle!
    end

    def output
        @cards.each do |card|
          card.output_card
        end
    end

    def deal
        @cards.shift.output_card
    end

    
end

deck=Deck.new
deck.shuffle
puts("The shuffled deck is:")
deck.output
puts("First card is:")
deck.deal

