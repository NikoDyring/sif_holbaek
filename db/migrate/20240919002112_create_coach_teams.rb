class CreateCoachTeams < ActiveRecord::Migration[7.2]
  def change
    create_table :coach_teams do |t|
      t.references :coach_profile, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
