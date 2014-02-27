class Card
  include Comparable
  attr_reader :suit, :face

  FACES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(Clubs Diamonds Hearts Spades)

  def initialize(suit, face)
    @suit = suit
    @face = face
  end

  def to_s
    "#{@face} of #{@suit}"
  end

  def <=>(other_card)
    face_diff = FACES.index(@face) - FACES.index(@other_card)
    return face_diff unless face_diff == 0
    suit_diff = SUITS.index(@suit) - SUITS.index(@other_suit)
    return suit_diff
  end
end
