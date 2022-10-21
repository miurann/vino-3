class Aroma < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :wine_aromas, dependent: :destroy
  has_many :wines, through: :wine_aromas
end
