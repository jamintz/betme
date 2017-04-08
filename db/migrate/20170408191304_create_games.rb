class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
