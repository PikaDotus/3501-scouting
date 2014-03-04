require 'spec_helper'

describe Team do
	before do
		@team = Team.new(number: 3501, pic_url: 'http://upload.wikimedia.org/wikipedia/en/5/5c/C-3PO_droid.png')
	end

	subject { @team }

	it { should respond_to(:number) }
	it { should respond_to(:pic_url) }
	it { should respond_to(:matches) }

	it { should be_valid }

	describe 'when number is not present' do
		before { @team.number = nil }
		it { should_not be_valid }
	end

	describe 'match associations' do
		before { @team.save }
		let!(:older_match) do
			FactoryGirl.create(:match, team: @team, created_at: 1.day.ago)
		end
		let!(:newer_match) do
			FactoryGirl.create(:match, team: @team, created_at: 1.hour.ago)
		end

		it 'should have the right matches in the right order' do
			expect(@team.matches.to_a).to eq [newer_match, older_match]
		end
	end
end
