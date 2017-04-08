class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :guess_id
      t.integer :prop_id
      t.integer :user_id
      t.boolean :correct

      t.timestamps
    end
  end
end
