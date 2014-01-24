require 'spec_helper'

describe Match do
	before { @match = Match.new(
		team_number: 1,
		red_1: 1,
		red_2: 1,
		red_3: 1,
		blue_1: 1,
		blue_2: 1,
		blue_3: 1,
		final_score: 1,
		scouter_email: 1,
		top_made_tele: 1,
		top_missed_tele: 1,
		low_made_tele: 1,
		low_goal_time_taken: 1,
		hot_auton: 1,
		drive_auton: 1,
		time_to_shoot_auton: 1,
		top_made_auton: 1,
		top_missed_auton: 1,
		low_made_auton: 1,
		low_missed_auton: 1,
		catch_made: 1,
		catch_missed: 1,
		truss_made: 1,
		truss_missed: 1,
		assists: 1,
		static_pickup: 1,
		moving_pickup: 1,
		attempted_passes: 1,
		accurate_passes: 1,
		attempted_receptions: 1,
		good_receptions: 1,
		pass_type: 1,
		receive_type: 1,
		ball_control_type: 1,
		human_player_skill: 1,
		goalie_blocked: 1,
		goalie_failed: 1,
		goalie_pathing: 1,
		goalie_block_area: 1,
		cims: 1,
		pure_defense: 1,
		def_passes_interrupted: 1,
		def_time_drain: 1,
		speed: 1,
		driver_skill: 1,
		drive_train_type: 1,
		primary_zone: 1,
		team_compromise: 1,
		team_follow: 1,
		team_cooperate: 1,
		when_not_offense: 1,
		no_show: 1,
		dead: 1,
		seconds_cycle: 1,
		assists_cycle: 1,
		cycles_match: 1
		) }

	subject { @match }

	it { should respond_to(:team_number) }
	it { should respond_to(:red_1) }
	it { should respond_to(:red_2) }
	it { should respond_to(:red_3) }
	it { should respond_to(:blue_1) }
	it { should respond_to(:blue_2) }
	it { should respond_to(:blue_3) }
	it { should respond_to(:final_score) }
	it { should respond_to(:scouter_email) }
	it { should respond_to(:top_made_tele) }
	it { should respond_to(:top_missed_tele) }
	it { should respond_to(:low_made_tele) }
	it { should respond_to(:low_goal_time_taken) }
	it { should respond_to(:hot_auton) }
	it { should respond_to(:drive_auton) }
	it { should respond_to(:time_to_shoot_auton) }
	it { should respond_to(:top_made_auton) }
	it { should respond_to(:top_missed_auton) }
	it { should respond_to(:low_made_auton) }
	it { should respond_to(:low_missed_auton) }
	it { should respond_to(:catch_made) }
	it { should respond_to(:catch_missed) }
	it { should respond_to(:truss_made) }
	it { should respond_to(:truss_missed) }
	it { should respond_to(:assists) }
	it { should respond_to(:static_pickup) }
	it { should respond_to(:moving_pickup) }
	it { should respond_to(:attempted_passes) }
	it { should respond_to(:accurate_passes) }
	it { should respond_to(:attempted_receptions) }
	it { should respond_to(:good_receptions) }
	it { should respond_to(:pass_type) }
	it { should respond_to(:receive_type) }
	it { should respond_to(:ball_control_type) }
	it { should respond_to(:human_player_skill) }
	it { should respond_to(:goalie_blocked) }
	it { should respond_to(:goalie_failed) }
	it { should respond_to(:goalie_pathing) }
	it { should respond_to(:goalie_block_area) }
	it { should respond_to(:cims) }
	it { should respond_to(:pure_defense) }
	it { should respond_to(:def_passes_interrupted) }
	it { should respond_to(:def_time_drain) }
	it { should respond_to(:speed) }
	it { should respond_to(:driver_skill) }
	it { should respond_to(:drive_train_type) }
	it { should respond_to(:primary_zone) }
	it { should respond_to(:team_compromise) }
	it { should respond_to(:team_follow) }
	it { should respond_to(:team_cooperate) }
	it { should respond_to(:when_not_offense) }
	it { should respond_to(:no_show) }
	it { should respond_to(:dead) }
	it { should respond_to(:seconds_cycle) }
	it { should respond_to(:assists_cycle) }
	it { should respond_to(:cycles_match) }

	it { should be_valid }

	describe 'when team number is not present' do
		before { @match.team_number = " " }
		it { should_not be_valid }
	end

	# add validations for all the rest
end
