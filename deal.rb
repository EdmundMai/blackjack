require_relative 'cards.rb'
require_relative 'deck.rb'

module Blackjack

  class Hand
  	attr_accessor :hand

  	def initialize(first_card, second_card)
  	  @hand = Array.new << first_card << second_card
  	end

  	def to_s
  	  puts "Your hand is"
  	  @hand.each do |card| puts card end
  	end

  	def hit
  	end


  end

end