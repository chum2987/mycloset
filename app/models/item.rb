class Item < ApplicationRecord
  belongs_to :user
  has_many :outfits, through: :item_outfits

  mount_uploader :image, ImageUploader
end
