require_relative 'cards.rb'
require_relative 'deck.rb'

module Blackjack

  class Hand
  	attr_accessor :hand

  	def initialize(first_card, second_card)
  	  @hand = Array.new << first_card << second_card
  	end

  	def to_s
  	  @hand.each do |card| puts card end
  	end

    def sum
      sum = 0
      @hand.each { |card| sum += card.value }
      sum
    end

  end

end