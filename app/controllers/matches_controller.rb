class MatchesController < ApplicationController
	# before_action :signed_in_user, only: [:new, :create, :show]

	def index
		@matches = Match.paginate(page: params[:page])
	end

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
  		params.require(:match).permit(
  			:team_number,
				:red_1,
				:red_2,
				:red_3,
				:blue_1,
				:blue_2,
				:blue_3,
				:final_score,
				:scouter_email,
				:top_made_tele,
				:top_missed_tele,
				:low_made_tele,
				:hot_auton,
				:drive_auton,
				:top_made_auton,
				:top_missed_auton,
				:low_made_auton,
				:low_missed_auton,
				:catch_made,
				:catch_missed,
				:truss_made,
				:truss_missed,
				:moving_pickup,
				:attempted_passes,
				:accurate_passes,
				:attempted_receptions,
				:good_receptions,
				:pass_type,
				:receive_type,
				:ball_control_type,
				:human_player_skill,
				:goalie_blocked,
				:goalie_failed,
				:goalie_block_area,
				:cims,
				:pure_defense,
				:def_passes_interrupted,
				:def_time_drain,
				:speed,
				:driver_skill,
				:drive_train_type,
				:team_compromise,
				:team_follow,
				:team_cooperate,
				:no_show,
				:dead,
				:match_type,
				:hold_ball,
				:possessions)
  	end
end
