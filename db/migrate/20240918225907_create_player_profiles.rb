class CreatePlayerProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :player_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
