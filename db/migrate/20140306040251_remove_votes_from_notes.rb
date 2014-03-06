class RemoveVotesFromNotes < ActiveRecord::Migration
  def change
  	remove_column :notes, :votes
  end
end
