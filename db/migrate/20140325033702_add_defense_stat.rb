class AddDefenseStat < ActiveRecord::Migration
  def change
  	add_column :matches, :defense, :integer
  end
end
