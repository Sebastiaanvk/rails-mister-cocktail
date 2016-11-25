class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  before_destroy :check_for_cocktails
  validates :name, presence:true
  validates :name, uniqueness:true
end
