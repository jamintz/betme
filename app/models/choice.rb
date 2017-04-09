class Choice < ApplicationRecord
  belongs_to :prop
  has_many :answers
end
