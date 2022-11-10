class Wine < ApplicationRecord
  validates :name, presence: true
  validates :producer, presence: true
  validates :jpn_name, presence: true
  validates :category, presence: true
  validates :color, presence: true
  validates :sweetness, presence: true
  validates :body, presence: true
  validates :acidity, presence: true
  validates :tannin, presence: true

  has_many :wine_aromas, dependent: :destroy
  has_many :wine_grapes, dependent: :destroy
  has_many :grape_varieties, through: :wine_grapes
  has_many :aromas, through: :wine_aromas
  has_one :question, dependent: :destroy
  belongs_to :region
  enum category: { still: 0, sparkling: 1 }
  enum color: { red: 0, white: 1, rose: 2, other: 3 }
  enum sweetness: { dry: 0, medium_dry: 1, middle_s: 2, medium_sweet: 3, sweet: 4 }
  enum acidity: { smooth: 0, medium_smooth: 1, middle_a: 2, acidulous: 3, sharp: 4 }
  enum body: { light: 0, medium_light: 1 , medium: 2, medium_heavy: 3, heavy: 4 }
  enum tannin: { very_little: 0, little: 1, middle_t: 2, many: 3, so_many: 4 }
end
