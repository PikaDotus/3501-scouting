class Team < ActiveRecord::Base
	has_many :matches
	validates :number, presence: true
	self.per_page = 9999999
end
