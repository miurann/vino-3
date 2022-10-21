class WineAroma < ApplicationRecord
  validates :wine_id, uniqueness: { scope: :aroma_id }

  belongs_to :wine
  belongs_to :aroma
end
