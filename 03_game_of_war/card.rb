class Card
  FACES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(Clubs Hearts Diamonds Spades)

  attr_reader :face, :suit
  include Comparable

  def initialize(face, suit)
    @face = face 
    @suit = suit
  end

  def to_s
    "#{@face} of #{@suit}"
  end

  def <=>(other_card)
    FACES.index(@face) <=> FACES.index(other_card.face)
  end

end
