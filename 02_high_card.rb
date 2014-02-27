#!/usr/bin/env ruby

SUITS = %w(Spades Hearts Diamonds Clubs)
FACES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

def random_card
  [FACES.sample, SUITS.sample]
end

def is_better?(card, other_card)
  face = card.first
  other_face = other_card.first

  value = FACES.index(face)
  other_value = FACES.index(other_face)

  value > other_value
end

def run
  my_card = random_card
  your_card = random_card

  puts "I picked #{my_card}"
  puts "You picked #{your_card}"

  if is_better?(my_card, your_card)
    puts "I win!"
  else
    puts "You win!"
  end
end

run