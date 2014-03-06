require './card'
require './hand'

class Deck
  def initialize
    @cards = []

    Card::SUITS.each do |suit|
      Card::FACES.each do |face|
        @cards << Card.new(face, suit)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal_hand!(size = 26)
    Hand.new(@cards.shift(size))
  end

  def take_random_card!
    @cards.delete(@cards.sample)
  end

  def return_card!(card)
    @cards << card
  end

  def to_s
    "Deck (#{@cards.length} cards)"
  end
end