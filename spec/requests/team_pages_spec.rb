require 'spec_helper'

describe 'MatchPages' do

	subject { page }

	describe 'team info page' do
		let(:team) { FactoryGirl.create(:team) }
		let!(:m1) { FactoryGirl.create(:match, team: team, team_number: 1) }
		let!(:m2) { FactoryGirl.create(:match, team: team, team_number: 2) }

		before { visit team_path(team) }

		it { should have_content(team.number) }

		describe 'matches' do
			it { should have_content(m1.team_number) }
			it { should have_content(m2.team_number) }
			it { should have_content(team.matches.count) }
		end
	end
end
