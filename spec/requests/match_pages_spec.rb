require 'spec_helper'

describe "MatchPages" do

	subject { page }

  describe "new match page" do
  	before { visit newmatch_path }

  	it { should have_content('New match') }
  	it { should have_title(full_title('New match')) }
  end
end
