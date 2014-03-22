require 'spec_helper'

describe "MatchPages" do

=begin

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
  end

=end

end
