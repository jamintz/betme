class Game < ApplicationRecord
  has_many :props
  has_many :answers
  
  def pick
  end
end
