deck = %w(AH AS AD AC 2H 2S 2D 2C 3H 3S 3D 3C 4H 4S 4D 4C 5H 5S 5D 5C 6H 6S 6D 6C 7H 7S 7D 7C JH JS JD JC QH QS QD QC KH KS KD KC)

class Poker_game
	def initialize(deck)
		@deck = deck
	end
	def shuffle_deck
		2.times { @deck = @deck.shuffle }
		@shuffled_deck = @deck
	end

	def deal
		@hand = []
		 5.times { @hand.push(@shuffled_deck.shift) }
		 @hand
	end
end

game = Poker_game.new(deck)

game.shuffle_deck
p game.deal