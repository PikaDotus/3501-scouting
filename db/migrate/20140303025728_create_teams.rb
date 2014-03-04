class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :number
      t.string :pic_url

      t.timestamps
    end
    add_index :teams, [:number]
  end
end
