class Region < ApplicationRecord
  validates :name, presence: true
  validates :yomigana, presence: true
  has_many :wines
  has_many :questions
end
