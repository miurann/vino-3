class Achievement < ApplicationRecord
  validates :user_id, uniqueness: { scope: :choice_id }

  belongs_to :user
  belongs_to :choice
end
