require 'spec_helper'

describe Match do
	before { @match = Match.new(
		team_number: 3501,
		red_1: 1,
		red_2: 1,
		red_3: 1,
		blue_1: 1,
		blue_2: 1,
		blue_3: 1,
		final_score: 1,
		scouter_email: "varchar@chaat.com",
		top_made_tele: 1,
		top_missed_tele: 1,
		low_made_tele: 1,
		low_goal_time_taken: 1,
		hot_auton: true,
		drive_auton: true,
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
		pure_defense: true,
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
		no_show: true,
		dead: true,
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

	describe 'when team_number is not present' do
		before { @match.team_number = " " }
		it { should_not be_valid }
	end
	describe 'when red_1 is not present' do
		before { @match.red_1 = " " }
		it { should_not be_valid }
	end
	describe 'when red_2 is not present' do
		before { @match.red_2 = " " }
		it { should_not be_valid }
	end
	describe 'when red_3 is not present' do
		before { @match.red_3 = " " }
		it { should_not be_valid }
	end
	describe 'when blue_1 is not present' do
		before { @match.blue_1 = " " }
		it { should_not be_valid }
	end
	describe 'when blue_2 is not present' do
		before { @match.blue_2 = " " }
		it { should_not be_valid }
	end
	describe 'when blue_3 is not present' do
		before { @match.blue_3 = " " }
		it { should_not be_valid }
	end
	describe 'when final_score is not present' do
		before { @match.final_score = " " }
		it { should_not be_valid }
	end
	describe 'when scouter_email is not present' do
		before { @match.scouter_email = " " }
		it { should_not be_valid }
	end
	describe 'when top_made_tele is not present' do
		before { @match.top_made_tele = " " }
		it { should_not be_valid }
	end
	describe 'when top_missed_tele is not present' do
		before { @match.top_missed_tele = " " }
		it { should_not be_valid }
	end
	describe 'when low_made_tele is not present' do
		before { @match.low_made_tele = " " }
		it { should_not be_valid }
	end
	describe 'when low_goal_time_taken is not present' do
		before { @match.low_goal_time_taken = " " }
		it { should_not be_valid }
	end
	describe 'when hot_auton is not present' do
		before { @match.hot_auton = " " }
		it { should_not be_valid }
	end
	describe 'when drive_auton is not present' do
		before { @match.drive_auton = " " }
		it { should_not be_valid }
	end
	describe 'when time_to_shoot_auton is not present' do
		before { @match.time_to_shoot_auton = " " }
		it { should_not be_valid }
	end
	describe 'when top_made_auton is not present' do
		before { @match.top_made_auton = " " }
		it { should_not be_valid }
	end
	describe 'when top_missed_auton is not present' do
		before { @match.top_missed_auton = " " }
		it { should_not be_valid }
	end
	describe 'when low_made_auton is not present' do
		before { @match.low_made_auton = " " }
		it { should_not be_valid }
	end
	describe 'when low_missed_auton is not present' do
		before { @match.low_missed_auton = " " }
		it { should_not be_valid }
	end
	describe 'when catch_made is not present' do
		before { @match.catch_made = " " }
		it { should_not be_valid }
	end
	describe 'when catch_missed is not present' do
		before { @match.catch_missed = " " }
		it { should_not be_valid }
	end
	describe 'when truss_made is not present' do
		before { @match.truss_made = " " }
		it { should_not be_valid }
	end
	describe 'when truss_missed is not present' do
		before { @match.truss_missed = " " }
		it { should_not be_valid }
	end
	describe 'when assists is not present' do
		before { @match.assists = " " }
		it { should_not be_valid }
	end
	describe 'when static_pickup is not present' do
		before { @match.static_pickup = " " }
		it { should_not be_valid }
	end
	describe 'when moving_pickup is not present' do
		before { @match.moving_pickup = " " }
		it { should_not be_valid }
	end
	describe 'when attempted_passes is not present' do
		before { @match.attempted_passes = " " }
		it { should_not be_valid }
	end
	describe 'when accurate_passes is not present' do
		before { @match.accurate_passes = " " }
		it { should_not be_valid }
	end
	describe 'when attempted_receptions is not present' do
		before { @match.attempted_receptions = " " }
		it { should_not be_valid }
	end
	describe 'when good_receptions is not present' do
		before { @match.good_receptions = " " }
		it { should_not be_valid }
	end
	describe 'when pass_type is not present' do
		before { @match.pass_type = " " }
		it { should_not be_valid }
	end
	describe 'when receive_type is not present' do
		before { @match.receive_type = " " }
		it { should_not be_valid }
	end
	describe 'when ball_control_type is not present' do
		before { @match.ball_control_type = " " }
		it { should_not be_valid }
	end
	describe 'when human_player_skill is not present' do
		before { @match.human_player_skill = " " }
		it { should_not be_valid }
	end
	describe 'when goalie_blocked is not present' do
		before { @match.goalie_blocked = " " }
		it { should_not be_valid }
	end
	describe 'when goalie_failed is not present' do
		before { @match.goalie_failed = " " }
		it { should_not be_valid }
	end
	describe 'when goalie_pathing is not present' do
		before { @match.goalie_pathing = " " }
		it { should_not be_valid }
	end
	describe 'when goalie_block_area is not present' do
		before { @match.goalie_block_area = " " }
		it { should_not be_valid }
	end
	describe 'when cims is not present' do
		before { @match.cims = " " }
		it { should_not be_valid }
	end
	describe 'when pure_defense is not present' do
		before { @match.pure_defense = " " }
		it { should_not be_valid }
	end
	describe 'when def_passes_interrupted is not present' do
		before { @match.def_passes_interrupted = " " }
		it { should_not be_valid }
	end
	describe 'when def_time_drain is not present' do
		before { @match.def_time_drain = " " }
		it { should_not be_valid }
	end
	describe 'when speed is not present' do
		before { @match.speed = " " }
		it { should_not be_valid }
	end
	describe 'when driver_skill is not present' do
		before { @match.driver_skill = " " }
		it { should_not be_valid }
	end
	describe 'when drive_train_type is not present' do
		before { @match.drive_train_type = " " }
		it { should_not be_valid }
	end
	describe 'when primary_zone is not present' do
		before { @match.primary_zone = " " }
		it { should_not be_valid }
	end
	describe 'when team_compromise is not present' do
		before { @match.team_compromise = " " }
		it { should_not be_valid }
	end
	describe 'when team_follow is not present' do
		before { @match.team_follow = " " }
		it { should_not be_valid }
	end
	describe 'when team_cooperate is not present' do
		before { @match.team_cooperate = " " }
		it { should_not be_valid }
	end
	describe 'when when_not_offense is not present' do
		before { @match.when_not_offense = " " }
		it { should_not be_valid }
	end
	describe 'when no_show is not present' do
		before { @match.no_show = " " }
		it { should_not be_valid }
	end
	describe 'when dead is not present' do
		before { @match.dead = " " }
		it { should_not be_valid }
	end
	describe 'when seconds_cycle is not present' do
		before { @match.seconds_cycle = " " }
		it { should_not be_valid }
	end
	describe 'when assists_cycle is not present' do
		before { @match.assists_cycle = " " }
		it { should_not be_valid }
	end
	describe 'when cycles_match is not present' do
		before { @match.cycles_match = " " }
		it { should_not be_valid }
	end


	# ----------------------------------
	# giant spec tests –– break
	# ----------------------------------

=begin
	describe 'when team_number is not within range' do
		before { @match.team_number = 'f'}
		it { should_not be_valid }
	end
	describe 'when red_1 is not within range' do
		before { @match.red_1 = 'f'}
		it { should_not be_valid }
	end
	describe 'when red_2 is not within range' do
		before { @match.red_2 = 'f'}
		it { should_not be_valid }
	end
	describe 'when red_3 is not within range' do
		before { @match.red_3 = 'f'}
		it { should_not be_valid }
	end
	describe 'when blue_1 is not within range' do
		before { @match.blue_1 = 'f'}
		it { should_not be_valid }
	end
	describe 'when blue_2 is not within range' do
		before { @match.blue_2 = 'f'}
		it { should_not be_valid }
	end
	describe 'when blue_3 is not within range' do
		before { @match.blue_3 = 'f'}
		it { should_not be_valid }
	end
	describe 'when final_score is not within range' do
		before { @match.final_score = 'f'}
		it { should_not be_valid }
	end
	describe 'when scouter_email is not within range' do
		before { @match.scouter_email = 'f'}
		it { should_not be_valid }
	end
	describe 'when top_made_tele is not within range' do
		before { @match.top_made_tele = 'f'}
		it { should_not be_valid }
	end
	describe 'when top_missed_tele is not within range' do
		before { @match.top_missed_tele = 'f'}
		it { should_not be_valid }
	end
	describe 'when low_made_tele is not within range' do
		before { @match.low_made_tele = 'f'}
		it { should_not be_valid }
	end
	describe 'when low_goal_time_taken is not within range' do
		before { @match.low_goal_time_taken = 'f'}
		it { should_not be_valid }
	end
	describe 'when hot_auton is not within range' do
		before { @match.hot_auton = 'f'}
		it { should_not be_valid }
	end
	describe 'when drive_auton is not within range' do
		before { @match.drive_auton = 'f'}
		it { should_not be_valid }
	end
	describe 'when time_to_shoot_auton is not within range' do
		before { @match.time_to_shoot_auton = 'f'}
		it { should_not be_valid }
	end
	describe 'when top_made_auton is not within range' do
		before { @match.top_made_auton = 'f'}
		it { should_not be_valid }
	end
	describe 'when top_missed_auton is not within range' do
		before { @match.top_missed_auton = 'f'}
		it { should_not be_valid }
	end
	describe 'when low_made_auton is not within range' do
		before { @match.low_made_auton = 'f'}
		it { should_not be_valid }
	end
	describe 'when low_missed_auton is not within range' do
		before { @match.low_missed_auton = 'f'}
		it { should_not be_valid }
	end
	describe 'when catch_made is not within range' do
		before { @match.catch_made = 'f'}
		it { should_not be_valid }
	end
	describe 'when catch_missed is not within range' do
		before { @match.catch_missed = 'f'}
		it { should_not be_valid }
	end
	describe 'when truss_made is not within range' do
		before { @match.truss_made = 'f'}
		it { should_not be_valid }
	end
	describe 'when truss_missed is not within range' do
		before { @match.truss_missed = 'f'}
		it { should_not be_valid }
	end
	describe 'when assists is not within range' do
		before { @match.assists = 'f'}
		it { should_not be_valid }
	end
	describe 'when static_pickup is not within range' do
		before { @match.static_pickup = 'f'}
		it { should_not be_valid }
	end
	describe 'when moving_pickup is not within range' do
		before { @match.moving_pickup = 'f'}
		it { should_not be_valid }
	end
	describe 'when attempted_passes is not within range' do
		before { @match.attempted_passes = 'f'}
		it { should_not be_valid }
	end
	describe 'when accurate_passes is not within range' do
		before { @match.accurate_passes = 'f'}
		it { should_not be_valid }
	end
	describe 'when attempted_receptions is not within range' do
		before { @match.attempted_receptions = 'f'}
		it { should_not be_valid }
	end
	describe 'when good_receptions is not within range' do
		before { @match.good_receptions = 'f'}
		it { should_not be_valid }
	end
	describe 'when pass_type is not within range' do
		before { @match.pass_type = 'f'}
		it { should_not be_valid }
	end
	describe 'when receive_type is not within range' do
		before { @match.receive_type = 'f'}
		it { should_not be_valid }
	end
	describe 'when ball_control_type is not within range' do
		before { @match.ball_control_type = 'f'}
		it { should_not be_valid }
	end
	describe 'when human_player_skill is not within range' do
		before { @match.human_player_skill = 'f'}
		it { should_not be_valid }
	end
	describe 'when goalie_blocked is not within range' do
		before { @match.goalie_blocked = 'f'}
		it { should_not be_valid }
	end
	describe 'when goalie_failed is not within range' do
		before { @match.goalie_failed = 'f'}
		it { should_not be_valid }
	end
	describe 'when goalie_pathing is not within range' do
		before { @match.goalie_pathing = 'f'}
		it { should_not be_valid }
	end
	describe 'when goalie_block_area is not within range' do
		before { @match.goalie_block_area = 'f'}
		it { should_not be_valid }
	end
	describe 'when cims is not within range' do
		before { @match.cims = 'f'}
		it { should_not be_valid }
	end
	describe 'when pure_defense is not within range' do
		before { @match.pure_defense = 'f'}
		it { should_not be_valid }
	end
	describe 'when def_passes_interrupted is not within range' do
		before { @match.def_passes_interrupted = 'f'}
		it { should_not be_valid }
	end
	describe 'when def_time_drain is not within range' do
		before { @match.def_time_drain = 'f'}
		it { should_not be_valid }
	end
	describe 'when speed is not within range' do
		before { @match.speed = 'f'}
		it { should_not be_valid }
	end
	describe 'when driver_skill is not within range' do
		before { @match.driver_skill = 'f'}
		it { should_not be_valid }
	end
	describe 'when drive_train_type is not within range' do
		before { @match.drive_train_type = 'f'}
		it { should_not be_valid }
	end
	describe 'when primary_zone is not within range' do
		before { @match.primary_zone = 'f'}
		it { should_not be_valid }
	end
	describe 'when team_compromise is not within range' do
		before { @match.team_compromise = 'f'}
		it { should_not be_valid }
	end
	describe 'when team_follow is not within range' do
		before { @match.team_follow = 'f'}
		it { should_not be_valid }
	end
	describe 'when team_cooperate is not within range' do
		before { @match.team_cooperate = 'f'}
		it { should_not be_valid }
	end
	describe 'when when_not_offense is not within range' do
		before { @match.when_not_offense = 'f'}
		it { should_not be_valid }
	end
	describe 'when no_show is not within range' do
		before { @match.no_show = 'f'}
		it { should_not be_valid }
	end
	describe 'when dead is not within range' do
		before { @match.dead = 'f'}
		it { should_not be_valid }
	end
	describe 'when seconds_cycle is not within range' do
		before { @match.seconds_cycle = 'f'}
		it { should_not be_valid }
	end
	describe 'when assists_cycle is not within range' do
		before { @match.assists_cycle = 'f'}
		it { should_not be_valid }
	end
	describe 'when cycles_match is not within range' do
		before { @match.cycles_match = 'f'}
		it { should_not be_valid }
	end
=end

end
