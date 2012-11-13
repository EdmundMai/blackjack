require_relative 'cards.rb'

module Blackjack

  class Deck
  	attr_accessor :cards, :remaining_cards, :used_cards, :full_deck
  	attr_reader :card_number, :card_shape

  	def initialize(deck_numbers)
  	  @deck_numbers = deck_numbers
  	  numbers = %w(1 2 3 4 5 6 7 8 9 10 jack queen king)
  	  suits = %w(heart diamond club spade)
  	  @full_deck = []
  	  numbers.each do |number|
  	  	suits.each do |suit|
  	  	  deck_numbers.times do 	
  	  	    @full_deck << Blackjack::Card.new(number, suit)
  	      end
  	  	end
  	  end
  	  @full_deck.shuffle!
  	  @remaining_cards = 52 * deck_numbers
  	end


  	def shuffle
  	  @remaining_cards = 52 * @deck_numbers
      numbers = %w(1 2 3 4 5 6 7 8 9 10 jack queen king)
      suits = %w(heart diamond club spade)
      @full_deck = []
      numbers.each do |number|
        suits.each do |suit|
          deck_numbers.times do   
            @full_deck << Blackjack::Card.new(number, suit)
          end
        end
      end
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


  	def deal
      a = @full_deck[0]
      @full_deck.delete_at(0)
      @remaining_cards -= 1
  	  a
  	end

  end 
end