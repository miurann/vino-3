class Region < ApplicationRecord
  validates :name, presence: true
  has_many :wines
  has_many :questions
end
