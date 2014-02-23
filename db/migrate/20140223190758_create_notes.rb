class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :content
      t.integer :votes
      t.integer :match_id

      t.timestamps
    end
    add_index :notes, [:match_id, :votes]
  end
end
