class Note < ActiveRecord::Base
	validates :match_id, presence: true
end
