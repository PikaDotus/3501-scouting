class Match < ActiveRecord::Base
	has_many :notes, dependent: :destroy
	belongs_to :team
	default_scope -> { order('created_at DESC') }

	validates :team_number, presence: true
	validates :match_type, presence: true
	validates :match_number, presence: true
	validates :scouter_email, presence: true

	after_initialize :init

	def init
    self.team_number ||= 0
		self.scouter_email ||= 0
		self.top_made_tele ||= 0
		self.top_missed_tele ||= 0
		self.low_made_tele ||= 0
		self.top_made_auton ||= 0
		self.top_missed_auton ||= 0
		self.low_made_auton ||= 0
		self.low_missed_auton ||= 0
		self.catch_made ||= 0
		self.catch_missed ||= 0
		self.truss_made ||= 0
		self.truss_missed ||= 0
		self.moving_pickup ||= 0
		self.pass_type ||= 0
		self.receive_type ||= 0
		self.ball_control_type ||= 0
		self.human_player_skill ||= 0
		self.goalie_blocked ||= 0
		self.goalie_failed ||= 0
		self.goalie_block_area ||= 0
		self.cims ||= 0
		self.speed ||= 0
		self.driver_skill ||= 0
		self.drive_train_type ||= 0
		self.match_type ||= 0
		self.possessions ||= 0
		self.team_id = self.team_number
		self.foul_pts ||= 0
		self.ball_control ||= 0
		self.shoot_to_hp ||= 0
		self.defense ||= 0
  end
end
