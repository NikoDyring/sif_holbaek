class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.date :date
      t.time :time
      t.string :location
      t.string :opposing_team

      t.timestamps
    end
  end
end
