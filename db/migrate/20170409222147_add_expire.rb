class AddExpire < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :expires, :datetime
  end
end
