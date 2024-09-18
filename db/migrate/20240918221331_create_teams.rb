class CreateTeams < ActiveRecord::Migration[7.2]
  def change
    create_table :teams do |t|
      t.string :series
      t.string :pool

      t.timestamps
    end
  end
end
