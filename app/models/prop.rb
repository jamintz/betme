class Prop < ApplicationRecord
  belongs_to :game
  has_many :guesses
  has_many :answers
end
