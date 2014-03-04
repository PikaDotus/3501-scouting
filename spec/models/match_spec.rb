require 'spec_helper'

describe Match do
	let(:team) { Team.create(number: 3501, pic_url: 'http://upload.wikimedia.org/wikipedia/en/5/5c/C-3PO_droid.png') }

	before { @match = team.matches.build(
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
		hot_auton: true,
		drive_auton: true,
		top_made_auton: 1,
		top_missed_auton: 1,
		low_made_auton: 1,
		low_missed_auton: 1,
		catch_made: 1,
		catch_missed: 1,
		truss_made: 1,
		truss_missed: 1,
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
		goalie_block_area: 1,
		cims: 1,
		pure_defense: true,
		def_passes_interrupted: 1,
		def_time_drain: 1,
		speed: 1,
		driver_skill: 1,
		drive_train_type: 1,
		team_compromise: 1,
		team_follow: 1,
		team_cooperate: 1,
		no_show: true,
		dead: true
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
	it { should respond_to(:hot_auton) }
	it { should respond_to(:drive_auton) }
	it { should respond_to(:top_made_auton) }
	it { should respond_to(:top_missed_auton) }
	it { should respond_to(:low_made_auton) }
	it { should respond_to(:low_missed_auton) }
	it { should respond_to(:catch_made) }
	it { should respond_to(:catch_missed) }
	it { should respond_to(:truss_made) }
	it { should respond_to(:truss_missed) }
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
	it { should respond_to(:goalie_block_area) }
	it { should respond_to(:cims) }
	it { should respond_to(:pure_defense) }
	it { should respond_to(:def_passes_interrupted) }
	it { should respond_to(:def_time_drain) }
	it { should respond_to(:speed) }
	it { should respond_to(:driver_skill) }
	it { should respond_to(:drive_train_type) }
	it { should respond_to(:team_compromise) }
	it { should respond_to(:team_follow) }
	it { should respond_to(:team_cooperate) }
	it { should respond_to(:no_show) }
	it { should respond_to(:dead) }
	it { should respond_to(:notes) }

	it { should be_valid }
	it { should respond_to(:team) }
	its(:team) { should eq team }

	describe 'note associations' do

		before { @match.save }
		let!(:higher_voted_note) do
			FactoryGirl.create(:note, match: @match, votes: 3)
		end
		let!(:lower_voted_note) do
			FactoryGirl.create(:note, match: @match, votes: 1)
		end

		it 'should have the right notes in the right order' do
			expect(@match.notes.to_a).to eq [higher_voted_note, lower_voted_note]
		end

		it 'should destroy associated notes' do
			notes = @match.notes.to_a
			@match.destroy
			expect(notes).not_to be_empty
			notes.each do |note|
				expect(Note.where(id: note.id)).to be_empty
			end
		end
	end
end
