class Game < ApplicationRecord
  has_many :props
  has_many :answers
  belongs_to :user
  
  def self.expire(date)
    date.strftime("%Y-%m-%d %H:%M")
  end

end
