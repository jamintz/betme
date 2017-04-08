class AddMore < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :points, :integer, :default => 0
    add_column :games, :pool, :integer, :default => 0
    add_column :guesses, :points, :integer, :default => 0
  end
end
