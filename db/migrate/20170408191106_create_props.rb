class CreateProps < ActiveRecord::Migration[5.0]
  def change
    create_table :props do |t|
      t.string :title
      t.boolean :active
      t.string :game_id

      t.timestamps
    end
  end
end
