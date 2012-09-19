require_relative 'cards.rb'

module Blackjack

  class Deck
  	attr_accessor :cards, :remaining_cards, :used_cards
  	attr_reader :card_number, :card_shape

  	def initialize(deck_numbers)
  	  @deck_numbers = deck_numbers
  	  numbers = %w(1 2 3 4 5 6 7 8 9 10 jack queen king)
  	  suits = %w(heart diamond club spade)
  	  full_deck = []
  	  numbers.each do |number|
  	  	suits.each do |suit|
  	  	  deck_numbers.times do 	
  	  	    full_deck << Blackjack::Card.new(number, suit)
  	      end
  	  	end
  	  end
  	  full_deck.shuffle!
  	  puts full_deck
  	  @remaining_cards = 52 * deck_numbers
  	end


  	def shuffle
  	  @remaining_cards = 52 * @deck_numbers
  	  "Deck is now reset with #{remaining_cards} cards."
  	end

  	def to_s
  	  "There are currently #{remaining_cards} left in the deck."
  	end

  	def card_number=(number)
  	  @card_number = number
  	end

  	def card_shape=(shape)
  	  @card_shape = shape
  	end

  	# def remove(card)
  	#   full_deck.delete_at(full_deck.index(card.to_s))
  	# end

  	def deal
  	  self.push(full_deck[0])
  	  full_deck.delete_at(full_deck.index(0))
  	  # full_deck.delete_at(full_deck.index(card.to_s))
  	end

  end 
end