class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.references :team, null: false, foreign_key: true
      t.integer :passing_yards
      t.integer :rushing_yards
      t.integer :touchdowns

      t.timestamps
    end
  end
end
