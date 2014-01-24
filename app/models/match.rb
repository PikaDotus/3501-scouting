class Match < ActiveRecord::Base
	validates :team_number, presence: true
end
