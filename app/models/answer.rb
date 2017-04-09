class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :choice
  belongs_to :prop
  belongs_to :game
end
