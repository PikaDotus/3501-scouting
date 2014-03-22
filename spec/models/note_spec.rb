require 'spec_helper'

describe Note do

=begin

	let(:match) { FactoryGirl.create(:match) }
	before { @note = match.notes.build(content: "lorem ipsum", votes: 0) }

	subject { @note }

	it { should respond_to(:content) }
	it { should respond_to(:match_id) }
	it { should respond_to(:votes) }
	it { should respond_to(:match) }
	its(:match) { should eq match }

	it { should be_valid }

	describe 'when match ID is not present' do
		before { @note.match_id = nil }
		it { should_not be_valid }
	end

	describe 'with blank content' do
		before { @note.content = " " }
		it { should_not be_valid }
	end

	describe 'with content that is too long' do
		before { @note.content = 'a' * 1001 }
		it { should_not be_valid }
	end

=end

end
