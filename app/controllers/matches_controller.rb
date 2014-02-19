class MatchesController < ApplicationController
	# before_action :signed_in_user, only: [:new, :create, :show]

  def show
  	@match = Match.find(params[:id])
  end

  def new
  	@match = Match.new
  end

  def create
  	@match = Match.new(match_params)
  	if @match.save
  		flash[:success] = 'Match saved!'
  		redirect_to @match
  	else
  		render 'new'
  	end
  end

  private

  	def match_params
  		params.require(:match).permit(:top_made_tele, :top_missed_tele,
  																	:low_made_tele, :low_goal_time_taken)
  	end
end
