class Wine < ApplicationRecord
  validates :name, presence: true
  validates :producer, presence: true
  validates :vintage, presence: true
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
end
