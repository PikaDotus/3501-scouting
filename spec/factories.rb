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

	factory :team do
		#sequence(:number) { |n| n }
		number 5
		pic_url "http://upload.wikimedia.org/wikipedia/en/5/5c/C-3PO_droid.png"
	end

	factory :match do
		#sequence(:team_number) { |n| n }
		# GATHERED AUTOMATICALLY ONCE PER MATCH
		team_number 3501
		team_id team_number
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

		hot_auton true
		drive_auton true
		top_made_auton 1
		top_missed_auton 1
		low_made_auton 1
		low_missed_auton 1

		catch_made 1
		catch_missed 1
		truss_made 1
		truss_missed 1

		moving_pickup 1
		attempted_passes 1
		accurate_passes 1
		attempted_receptions 1
		good_receptions 1

		# GATHERED ONCE AT PITS
		pass_type 1
		receive_type 1
		ball_control_type 1
		cims 1
		drive_train_type 1

		human_player_skill 1
		goalie_blocked 1
		goalie_failed 1
		goalie_block_area 1
		pure_defense true
		def_passes_interrupted 1
		def_time_drain 1

		speed 1
		driver_skill 1

		team_compromise 1 # grab from stuart
		team_follow 1
		team_cooperate 1

		match_type 1
		hold_ball 1
		match_number 1
		possessions 1

		no_show true
		dead true
	end

	factory :note do
		content "lorem ipsum"
		votes 0
		match
	end
end
