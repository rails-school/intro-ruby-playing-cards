require './card'
class Hand
  def initialize(cards)
    @cards = cards
  end

  def take_top_card!
    @cards.delete_at(0)
  end

  def add_cards!(cards)
    @cards = @cards + cards
  end

  def empty?
    @cards.empty?
  end

  def to_s
    "Hand (#{@cards.size})"
  end
end