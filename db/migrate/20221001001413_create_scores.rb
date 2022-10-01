class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :player
      t.references :image, null: false, foreign_key: true
      t.integer :game_duration
      t.timestamps
    end
  end
end
