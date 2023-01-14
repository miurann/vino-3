class Choice < ApplicationRecord
  validates :content, presence: true
  validates :correct_answer, presence: true

  belongs_to :question

  has_many :achievements, dependent: :destroy
  has_many :users, through: :achievements
end
