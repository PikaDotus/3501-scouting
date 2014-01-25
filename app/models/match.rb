class Match < ActiveRecord::Base
	validates :team_number, presence: true
	validates :red_1, presence: true
	validates :red_2, presence: true
	validates :red_3, presence: true
	validates :blue_1, presence: true
	validates :blue_2, presence: true
	validates :blue_3, presence: true
	validates :final_score, presence: true
	validates :scouter_email, presence: true
	validates :top_made_tele, presence: true
	validates :top_missed_tele, presence: true
	validates :low_made_tele, presence: true
	validates :low_goal_time_taken, presence: true
	validates :hot_auton, presence: true
	validates :drive_auton, presence: true
	validates :time_to_shoot_auton, presence: true
	validates :top_made_auton, presence: true
	validates :top_missed_auton, presence: true
	validates :low_made_auton, presence: true
	validates :low_missed_auton, presence: true
	validates :catch_made, presence: true
	validates :catch_missed, presence: true
	validates :truss_made, presence: true
	validates :truss_missed, presence: true
	validates :assists, presence: true
	validates :static_pickup, presence: true
	validates :moving_pickup, presence: true
	validates :attempted_passes, presence: true
	validates :accurate_passes, presence: true
	validates :attempted_receptions, presence: true
	validates :good_receptions, presence: true
	validates :pass_type, presence: true
	validates :receive_type, presence: true
	validates :ball_control_type, presence: true
	validates :human_player_skill, presence: true
	validates :goalie_blocked, presence: true
	validates :goalie_failed, presence: true
	validates :goalie_pathing, presence: true
	validates :goalie_block_area, presence: true
	validates :cims, presence: true
	validates :pure_defense, presence: true
	validates :def_passes_interrupted, presence: true
	validates :def_time_drain, presence: true
	validates :speed, presence: true
	validates :driver_skill, presence: true
	validates :drive_train_type, presence: true
	validates :primary_zone, presence: true
	validates :team_compromise, presence: true
	validates :team_follow, presence: true
	validates :team_cooperate, presence: true
	validates :when_not_offense, presence: true
	validates :no_show, presence: true
	validates :dead, presence: true
	validates :seconds_cycle, presence: true
	validates :assists_cycle, presence: true
	validates :cycles_match, presence: true
end
