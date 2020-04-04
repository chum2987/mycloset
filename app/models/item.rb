class Item < ApplicationRecord
  belongs_to :user
  has_many :outfits, through: :item_outfits
  has_many :item_outfits

  mount_uploader :image, ImageUploader

  def self.search(search) 
    if search 
      Item.where(['gender LIKE ? OR clothes LIKE ? OR color LIKE ? OR brand LIKE ? OR text LIKE ?', "%#{search}%", "%#{search}%","%#{search}%","%#{search}%", "%#{search}%"])
    else
      Item.all
    end
  end

end
