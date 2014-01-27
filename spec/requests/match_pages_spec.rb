require 'spec_helper'

describe "MatchPages" do

	subject { page }

  describe "new match page" do
  	before { visit newmatch_path }

  	it { should have_content('New match') }
  	it { should have_title(full_title('New match')) }
  end

  describe "signup page" do

    before { visit newmatch_path }

    let(:submit) { "Submit match" }

    describe "with invalid information" do
      it "should not create a match" do
        expect { click_button submit }.not_to change(Match, :count)
      end
    end

    describe "with valid information" do
      before do
				fill_in "Top scored", with: 1 #tele
				fill_in "Top missed", with: 1
				fill_in "Low scored", with: 1
				fill_in "Low time taken", with: 1
				fill_in "Hot detection", with: true #auton
				fill_in "Drive points", with: 1
				fill_in "Time taken before shooting", with: 1
				fill_in "Top scored", with: 1
				fill_in "Top missed", with: 1
				fill_in "Low scored", with: 1
				fill_in "Low missed", with: 1
				fill_in "Catches made", with: 1 #tele
				fill_in "Catches missed", with: 1
				fill_in "Truss shots made", with: 1
				fill_in "Truss shots missed", with: 1
				fill_in "Assists earned", with: 1
				fill_in "Static pickup speed", with: 1
				fill_in "Moving pickup speed", with: 1
				fill_in "Passes attempted", with: 1
				fill_in "Accurate passes", with: 1
				fill_in "Receptions attempted", with: 1
				fill_in "Good receptions", with: 1
				fill_in "Pass type", with: 1
				fill_in "Receive type", with: 1
				fill_in "Ball control type", with: 1
				fill_in "Human player skill", with: 1
				fill_in "Shots blocked – goalie", with: 1
				fill_in "Shots allowed – goalie", with: 1
				fill_in "Goalie pathing", with: 1
				fill_in "Goal blocked by goalie", with: 1
				fill_in "Number of CIMs", with: 1
				fill_in "Pure defense", with: 1
				fill_in "Passes interrupted", with: 1 #defense
				fill_in "Time drain caused", with: 1 #delete this maybe
				fill_in "Speed", with: 1 #robot stats
				fill_in "Driver skill", with: 1
				fill_in "Drive train type", with: 1
				fill_in "Primary play zone", with: 1
				fill_in "When not playing offense", with: 1
				fill_in "No show", with: 1
				fill_in "Dead", with: 1
				fill_in "Seconds per cycle", with: 1
				fill_in "Assists per cycle", with: 1
				fill_in "Cycles per match", with: 1
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end

=begin
  describe 'match show page' do
  	let(:match) { FactoryGirl.create(:match) }
  	before { visit match_path(match) }

  	it { should have_content(match.team_number) }
  	it { should have_title(match.id) }
  end
=end

end
