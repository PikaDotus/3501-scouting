class RemoveWhenNotOffenseFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :when_not_offense, :integer
  end
end
