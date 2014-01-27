FactoryGirl.define do
	factory :user do
		sequence(:name)		{ |n| "Person #{n}" }
		sequence(:email)	{ |n| "person_#{n}@example.com" }
		password 'foobardesu'
		password_confirmation 'foobardesu'

		factory :admin do
			admin true
		end
	end

	factory :match do
		#sequence(:team_number) { |n| n }
		team_number 3501
		red_1 1
		red_2 1
		red_3 1
		blue_1 1
		blue_2 1
		blue_3 1
		final_score 1
		scouter_email "msg@this.com"
		top_made_tele 1
		top_missed_tele 1
		low_made_tele 1
		low_goal_time_taken 1
		hot_auton true
		drive_auton true
		time_to_shoot_auton 1
		top_made_auton 1
		top_missed_auton 1
		low_made_auton 1
		low_missed_auton 1
		catch_made 1
		catch_missed 1
		truss_made 1
		truss_missed 1
		assists 1
		static_pickup 1
		moving_pickup 1
		attempted_passes 1
		accurate_passes 1
		attempted_receptions 1
		good_receptions 1
		pass_type 1
		receive_type 1
		ball_control_type 1
		human_player_skill 1
		goalie_blocked 1
		goalie_failed 1
		goalie_pathing 1
		goalie_block_area 1
		cims 1
		pure_defense false
		def_passes_interrupted 1
		def_time_drain 1
		speed 1
		driver_skill 1
		drive_train_type 1
		primary_zone 1
		team_compromise 1
		team_follow 1
		team_cooperate 1
		when_not_offense 1
		no_show false
		dead false
		seconds_cycle 1
		assists_cycle 1
		cycles_match 1
	end
end
