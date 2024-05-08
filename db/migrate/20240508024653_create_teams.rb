class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach
      t.string :stadium

      t.timestamps
    end
  end
end
