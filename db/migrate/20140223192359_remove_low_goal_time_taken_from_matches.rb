class RemoveLowGoalTimeTakenFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :low_goal_time_taken, :integer
    remove_column :matches, :time_to_shoot_auton, :integer
    remove_column :matches, :assists, :integer
    remove_column :matches, :goalie_pathing, :integer
    remove_column :matches, :primary_zone, :integer
    remove_column :matches, :seconds_cycle, :integer
    remove_column :matches, :assists_cycle, :integer
    remove_column :matches, :cycles_match, :integer
  end
end
