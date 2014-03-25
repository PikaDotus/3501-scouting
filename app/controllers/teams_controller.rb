class TeamsController < ApplicationController
	def index
		@teams = Team.paginate(page: params[:page])
	end

  def show
  	@team = Team.find(params[:id])
  	@matches = @team.matches
    gon.push({
      matches: @matches
      })
  end

  def new
  	@team = Team.new
  end
end
