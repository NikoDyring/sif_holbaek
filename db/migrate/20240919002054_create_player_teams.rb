class CreatePlayerTeams < ActiveRecord::Migration[7.2]
  def change
    create_table :player_teams do |t|
      t.references :player_profile, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
