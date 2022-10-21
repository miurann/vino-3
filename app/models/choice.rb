class Choice < ApplicationRecord
  validates :content, presence: true
  validates :correct_answer, presence: true
  
  belongs_to :question
end
