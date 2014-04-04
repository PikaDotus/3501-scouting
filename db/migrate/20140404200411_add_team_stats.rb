class AddTeamStats < ActiveRecord::Migration
  def change
  	add_column :teams, :assist_score, :integer
  	add_column :teams, :auto_score, :integer
  	add_column :teams, :truss_and_catch_score, :integer
  	add_column :teams, :teleop_score, :integer
  	add_column :teams, :matches_played, :integer
  end
end
