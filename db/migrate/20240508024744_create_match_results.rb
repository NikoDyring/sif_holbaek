class CreateMatchResults < ActiveRecord::Migration[7.1]
  def change
    create_table :match_results do |t|
      t.references :match, null: false, foreign_key: true
      t.string :score
      t.text :goalscorers

      t.timestamps
    end
  end
end
