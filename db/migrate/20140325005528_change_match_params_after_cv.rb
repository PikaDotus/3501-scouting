class ChangeMatchParamsAfterCv < ActiveRecord::Migration
  def change
  	add_column :matches, :foul_pts, :integer
  	add_column :matches, :ball_control, :integer
  	add_column :matches, :shoot_to_hp, :boolean

  	remove_column :matches, :hold_ball, :boolean
  	remove_column :matches, :red_1, :integer
  	remove_column :matches, :red_2, :integer
  	remove_column :matches, :red_3, :integer
  	remove_column :matches, :blue_1, :integer
  	remove_column :matches, :blue_2, :integer
  	remove_column :matches, :blue_3, :integer
  	remove_column :matches, :final_score, :integer
  	remove_column :matches, :attempted_passes, :integer
  	remove_column :matches, :accurate_passes, :integer
  	remove_column :matches, :attempted_receptions, :integer
  	remove_column :matches, :good_receptions, :integer
  	remove_column :matches, :def_time_drain, :integer
  	remove_column :matches, :def_passes_interrupted, :integer
  	remove_column :matches, :team_compromise, :integer
  	remove_column :matches, :team_follow, :integer
  	remove_column :matches, :team_cooperate, :integer
  end
end
