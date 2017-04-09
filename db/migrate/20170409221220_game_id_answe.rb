class GameIdAnswe < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :game_id, :integer
  end
end
