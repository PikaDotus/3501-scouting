require 'spec_helper'

describe "MatchPages" do

	subject { page }

	describe 'display page' do
		let(:match) { FactoryGirl.create(:match) }
		before { visit(match_path(match)) }

		it { should have_title(match.id) }
	end

  describe "new match page" do
  	before { visit newmatch_path }

  	it { should have_content('New match') }
  	it { should have_title(full_title('New match')) }

  	before { visit newmatch_path }

    let(:submit) { "Submit match" }

    describe "with invalid information" do
      it "should not create a match" do
        expect { click_button submit }.not_to change(Match, :count)
      end

      describe 'after submission' do
      	before { click_button submit }

      	it { should have_title("New match") }
      	it { should have_content("error") }
      end
    end

=begin

    describe "with valid information" do
      before do
				fill_in "Top scored", with: 1 #tele
				fill_in "Top missed", with: 1
				fill_in "Low scored", with: 1
				#fill_in "Scored in hot goal", with: true #auton
				#fill_in "Drive points", with: true
				fill_in "Top made", with: 1
				fill_in "Top failed", with: 1
				fill_in "Low made", with: 1
				fill_in "Low failed", with: 1
				fill_in "Catches made", with: 1 #tele
				fill_in "Catches missed", with: 1
				fill_in "Truss shots made", with: 1
				fill_in "Truss shots missed", with: 1
				fill_in "Static pickup speed", with: 1
				fill_in "Moving pickup speed", with: 1
				fill_in "Passes attempted", with: 1
				fill_in "Accurate passes", with: 1
				fill_in "Receptions attempted", with: 1
				fill_in "Good receptions", with: 1
				fill_in "Human player skill", with: 1
				fill_in "Shots blocked – goalie", with: 1
				fill_in "Shots allowed – goalie", with: 1
				fill_in "Goal blocked by goalie", with: 1
				#fill_in "Pure defense", with: true
				fill_in "Passes interrupted", with: 1 #defense
				fill_in "Time drain caused", with: 1
				fill_in "Speed", with: 1 #robot stats
				fill_in "Driver skill", with: 1
				#fill_in "No show", with: true
				#fill_in "Dead", with: true
      end

      it "should create a new match" do
        expect { click_button submit }.to change(Match, :count).by(1)
      end

      describe 'after saving the match' do
      	before { click_button submit }
      	let(:match) { Match.find_by(id: '1') }

      	it { should have_title(match.id) }
      	it { should have_selector('div.alert.alert-success', text: 'Welcome') }
      end
    end

=end


  end
end
