class User < ApplicationRecord
  authenticates_with_sorcery!
  mount_uploader :avatar, AvatarUploader

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :name, presence: true, length: { maximum: 255 }

  has_many :achievements, dependent: :destroy
  has_many :choices, through: :achievements
  has_many :correct_choices, through: :achievements, source: :choice

  def answer(choice)
    correct_choices << choice
  end

  def answered?(choice)
    correct_choices.include?(choice)
  end
end
