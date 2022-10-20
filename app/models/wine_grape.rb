class WineGrape < ApplicationRecord
  belongs_to :wine
  belongs_to :grape_variety
end
