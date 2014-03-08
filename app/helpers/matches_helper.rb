module MatchesHelper

	# Returns the string of the match type
	def match_type_to_words(match_type)
		case match_type
			when 0
				return 'Practice'
			when 1
				return 'Qual'
			when 2
				return 'Elim'
		end
	end
end
