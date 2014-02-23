require 'spec_helper'

describe Note do
	before do
		@note = Note.new(content: "some interesting thing", match_id: 1, votes: 0)
	end

	subject { @note }

	it { should respond_to(:content) }
	it { should respond_to(:match_id) }
	it { should respond_to(:votes) }

	it { should be_valid }

	describe 'when match ID is not present' do
		before { @note.match_id = nil }
		it { should_not be_valid }
	end
end
