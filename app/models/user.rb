class User < ApplicationRecord
  has_many :recipes
  has_many :allergies
  has_many :ingredients, through: :allergies

  def full_name
    "#{self.name}"
  end
end
