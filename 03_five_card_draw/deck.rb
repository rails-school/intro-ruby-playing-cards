require './card.rb'

class Deck
  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::FACES.each do |face|
        @cards << Card.new(suit, face)
      end
    end
  end

  def take_card
    @cards.delete_at(rand(@cards.length))
  end

  def hand(size)
    (1..size).map{take_card}
  end

end