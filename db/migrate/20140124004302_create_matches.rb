class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team_number
      t.integer :red_1
      t.integer :red_2
      t.integer :red_3
      t.integer :blue_1
      t.integer :blue_2
      t.integer :blue_3
      t.integer :final_score
      t.string :scouter_email
      t.integer :top_made_tele
      t.integer :top_missed_tele
      t.integer :low_made_tele
      t.integer :low_goal_time_taken
      t.boolean :hot_auton
      t.boolean :drive_auton
      t.integer :time_to_shoot_auton
      t.integer :top_made_auton
      t.integer :top_missed_auton
      t.integer :low_made_auton
      t.integer :low_missed_auton
      t.integer :catch_made
      t.integer :catch_missed
      t.integer :truss_made
      t.integer :truss_missed
      t.integer :assists
      t.integer :static_pickup
      t.integer :moving_pickup
      t.integer :attempted_passes
      t.integer :accurate_passes
      t.integer :attempted_receptions
      t.integer :good_receptions
      t.integer :pass_type
      t.integer :receive_type
      t.integer :ball_control_type
      t.integer :human_player_skill
      t.integer :goalie_blocked
      t.integer :goalie_failed
      t.integer :goalie_pathing
      t.integer :goalie_block_area
      t.integer :cims
      t.boolean :pure_defense
      t.integer :def_passes_interrupted
      t.integer :def_time_drain
      t.integer :speed
      t.integer :driver_skill
      t.integer :drive_train_type
      t.integer :primary_zone
      t.integer :team_compromise
      t.integer :team_follow
      t.integer :team_cooperate
      t.integer :when_not_offense
      t.boolean :no_show
      t.boolean :dead
      t.integer :seconds_cycle
      t.integer :assists_cycle
      t.integer :cycles_match

      t.timestamps
    end
  end
end
