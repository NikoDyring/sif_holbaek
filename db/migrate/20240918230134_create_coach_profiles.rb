class CreateCoachProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :coach_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
