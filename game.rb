require_relative 'deck.rb'
require_relative 'deal.rb'
require_relative'cards.rb'

include Blackjack

puts "Ready to play blackjack? Y or N"
response = gets.chomp.downcase
puts "How many decks would you like to play with?"
decks = gets.chomp.to_i
deck = Deck.new(decks)
puts "Deck creation completed."


while response == "y"
  puts "Let's begin."
  dealer = Hand.new(deck.deal, deck.deal)
  hand = Hand.new(deck.deal, deck.deal)
  puts "Dealer's hand:"
  puts dealer
  puts "Your hand:"
  puts hand
  puts hand.sum
  puts "Would you like to hit? Y or N"
  answer = gets.chomp.downcase
  if answer == "y"
  	hand.hand << deck.deal
  	puts hand
  	puts hand.sum
  	while hand.sum <= 21 && answer == "y"
  	  puts "Would you like to hit? Y or N"
      answer = gets.chomp.downcase
      if answer == "y"
      	hand.hand << deck.deal
      	puts hand
  	    puts hand.sum
      end
  	end
  end
  puts "You busted" if hand.sum > 21
  puts "Blackjack" if hand.sum == 21
  puts "Your final sum was #{hand.sum}"
  dealer.hand << deck.deal while dealer.sum <=16
  puts "Dealer's hand:"
  puts dealer.hand
  puts dealer.sum
  if dealer.sum <= 21 && dealer.sum >= hand.sum
  	puts "You lose."
  elsif hand.sum > 21 && dealer.sum > 21
  	puts "No one wins."
  elsif hand.sum <= 21 && dealer.sum > 21
  	puts "Dealer busts. You win."
  else
  	puts "Dealer wins"
  end
  if deck.remaining_cards < 10
  	deck.shuffle
  	puts "Deck has been reset"
  end
  puts "Would you like to play again? Y or N"
  response = gets.chomp.downcase
end