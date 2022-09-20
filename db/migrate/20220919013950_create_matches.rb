class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.date :date
      t.string :ground
      t.time :start
      t.time :finish
      t.integer :home_score
      t.integer :away_score

      t.timestamps
    end
  end
end
