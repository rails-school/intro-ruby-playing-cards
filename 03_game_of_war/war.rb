#!/usr/bin/env ruby

require './deck'
require './card'
require './hand'

class Game
  def initialize
    @deck = Deck.new
    @round = 1

    puts "Shuffling the deck..."
    @deck.shuffle!
    #sleep 1
  end

  def start
    @player1_hand = @deck.deal_hand!
    @player2_hand = @deck.deal_hand!

    play_round until game_over?
  end

  def draw_cards(pile = [])
    player1_card = @player1_hand.take_top_card!
    player2_card = @player2_hand.take_top_card!

    puts "Player 1 drew #{player1_card}"
    puts "Player 2 drew #{player2_card}"

    pile << player1_card
    pile << player2_card

    return player1_card <=> player2_card
  end

  def play_round
    pile = []
    cmp = draw_cards(pile)

    while cmp == 0
      puts "TIE!"

      [@player1_hand, @player2_hand].each do |hand|
        3.times do
          pile << hand.take_top_card!
          return if game_over?
        end
      end
      cmp = draw_cards(pile)
    end

    puts "there are #{pile.length} cards to win"
    case cmp
    when -1
      puts "Player 2 wins round"
      @player2_hand.add_cards!(pile.shuffle)
    when 1
      puts "Player 1 wins round"
      @player1_hand.add_cards!(pile.shuffle)
    end

    puts "\n\nEnd of Round #{@round}"
    puts "Player 1's Hand: #{@player1_hand}"
    puts "Player 2's Hand: #{@player2_hand}"
    puts "\n\n"
    @round += 1

  end

  def game_over?
    if @player1_hand.empty?
      puts "Player 2 Wins!"
      return true
    elsif @player2_hand.empty?
      puts "Player 1 Wins!"
      return true
    end

    return false
  end
end

Game.new.start
