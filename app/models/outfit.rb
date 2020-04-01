class Outfit < ApplicationRecord
  belongs_to :user
  has_many :items, through: :item_outfits
  has_many :item_outfits

  mount_uploader :image, ImageUploader
end
