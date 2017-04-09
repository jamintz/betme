class PoolPot < ActiveRecord::Migration[5.0]
  def change
    rename_column :games, :pool, :pot
  end
end
