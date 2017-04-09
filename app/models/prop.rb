class Prop < ApplicationRecord
  belongs_to :game
  has_many :choices
  has_many :answers
end
