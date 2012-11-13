module Blackjack

  class Bet
  	attr_accessor :money
  	
  	def initialize(money)
  	  @initial_pot = money
  	  @money = money
  	end

  	def bet(amount)
  	  @money -= amount
  	end

  	def bankrupt
  	  puts "You're about to go bankrupt. Let's reset your pot to $#{@initial_pot}."
  	  @money = @initial_pot
  	end

  	def win(amount)
  	  @money += amount
  	end

  	def to_s
  	  puts "$#{@money}"
  	end

  end
end