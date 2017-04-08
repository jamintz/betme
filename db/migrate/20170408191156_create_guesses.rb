class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :prop_id
      t.boolean :correct
      t.string :title

      t.timestamps
    end
  end
end
