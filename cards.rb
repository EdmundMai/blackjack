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
  	  if @number == ("jack" || "queen" || "king")
  	  	@value = 10
  	  else
  	  	@value = @number
  	  end
  	end

  end
end