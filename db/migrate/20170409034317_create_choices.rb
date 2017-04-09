class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.integer :prop_id
      t.boolean :correct
      t.string :title
      t.integer :points

      t.timestamps
    end
  end
end
