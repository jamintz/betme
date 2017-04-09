class Game < ApplicationRecord
  has_many :props
  has_many :answers
  belongs_to :user

end
