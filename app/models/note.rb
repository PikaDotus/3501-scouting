class Note < ActiveRecord::Base
	belongs_to :match
	default_scope -> { order('votes DESC') }
	validates :content, presence: true, length: { maximum: 1000 }
	validates :match_id, presence: true
end
