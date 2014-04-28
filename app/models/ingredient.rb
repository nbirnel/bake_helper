class Ingredient < ActiveRecord::Base
  has_many :quantities
  has_many :recipes, through: :quantities

  scope :cheap, -> { where('price_per_pound < 1.0') }
end
