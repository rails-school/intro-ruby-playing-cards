#!/usr/bin/env ruby

SUITS = ["HEARTS", "SPADES", "CLUBS", "DIAMONDS"]
FACES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

my_suit = SUITS.sample
my_face = FACES.sample

puts "I picked the #{my_face} of #{my_suit}"
