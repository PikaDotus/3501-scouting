class Team < ActiveRecord::Base
	has_many :matches
	validates :number, presence: true
end
