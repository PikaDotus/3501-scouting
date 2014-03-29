class MatchesController < ApplicationController
	# before_action :signed_in_user, only: [:new, :create, :show]

	def index
		@matches = Match.paginate(page: params[:page])
	end

  def show
  	@match = Match.find(params[:id])
  	@notes = @match.notes
  	@note = @match.notes.build
  end

  def new
  	if not current_user
  		store_location
  		redirect_to signin_url, notice: 'Please sign in.'
  	end
  	@match = Match.new
  end

  def create
  	@match = Match.new(match_params)
  	if @match.save
  		#Match.find(params[@match.id]).notes.build(note_params)
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
  			:match_number,
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
				:pass_type,
				:receive_type,
				:ball_control_type,
				:human_player_skill,
				:goalie_blocked,
				:goalie_failed,
				:goalie_block_area,
				:cims,
				:pure_defense,
				:speed,
				:driver_skill,
				:drive_train_type,
				:no_show,
				:dead,
				:match_type,
				:ball_control,
				:possessions,
				:foul_pts,
				:shoot_to_hp,
				:defense)
  	end
end
