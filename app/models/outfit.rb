class Outfit < ApplicationRecord
  belongs_to :user
  has_many :items, through: :item_outfits
  has_many :item_outfits, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  mount_uploader :image, ImageUploader

  validates :image, presence: true
end
