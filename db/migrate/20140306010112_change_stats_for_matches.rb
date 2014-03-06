class ChangeStatsForMatches < ActiveRecord::Migration
  def change
  	add_column :matches, :match_type, :integer
  	add_column :matches, :hold_ball, :boolean
  	add_column :matches, :possessions, :integer

  	remove_column :matches, :static_pickup, :integer
  end
end
