class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :guess
  belongs_to :prop
end
