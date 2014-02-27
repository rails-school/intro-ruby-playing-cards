#!/usr/bin/env ruby

SUITS = ["Spades", "Hearts", "Diamonds", "Clubs"]
FACES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

card = "#{FACES.sample} of #{SUITS.sample}"
puts "I picked the #{card}"
