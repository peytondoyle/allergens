class Ingredient < ApplicationRecord
  has_many :allergies
  has_many :users, through: :allergies
  has_many :rec_ings
  has_many :recipes, through: :rec_ings
end
