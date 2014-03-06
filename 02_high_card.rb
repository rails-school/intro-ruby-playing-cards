#!/usr/bin/env ruby

SUITS = %w(Clubs Hearts Diamonds Spades)
FACES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

def pick_card
  [FACES.sample, SUITS.sample]
end

def print_card(card)
  puts "the #{card.first} of #{card.last}"
end

def did_i_win?(my_card, your_card)
  FACES.index(my_card.first) > FACES.index(your_card.first)
end

my_card = pick_card
your_card = pick_card

print "I picked "
print_card(my_card)

print "You picked "
print_card(your_card)

if did_i_win?(my_card, your_card)
  puts "I Win!"
else
  puts "You Win!"
end
