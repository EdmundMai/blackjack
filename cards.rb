module Blackjack

  class Card
  	attr_accessor :number, :suit, :value

  	def initialize(number, suit)
  	  @number = number
  	  @suit = suit
  	end

  	def to_s
  	  "#{number} of #{suit}s"
  	end
  	
  	def value
  	  case @number
      when 'jack', 'queen', 'king'
        10
  	  else
  	  	@number.to_i
  	  end
  	end

  end
end