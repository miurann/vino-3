class Aroma < ApplicationRecord
  mount_uploader :image, AromaImageUploader
  validates :name, presence: true, uniqueness: true

  has_many :wine_aromas, dependent: :destroy
  has_many :wines, through: :wine_aromas
end
