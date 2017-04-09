class AnswerChoice < ActiveRecord::Migration[5.0]
  def change
    rename_column :answers, :guess_id, :choice_id
  end
end
