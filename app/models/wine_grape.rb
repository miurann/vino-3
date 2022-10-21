class WineGrape < ApplicationRecord
  validates :wine_id, uniqueness: { scope: :grape_variety_id }

  belongs_to :wine
  belongs_to :grape_variety
end
