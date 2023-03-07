class Question < ApplicationRecord
  validates :content, presence: true
  validates :description, presence: true

  belongs_to :wine
  has_many :choices, dependent: :destroy
  belongs_to :region
end
