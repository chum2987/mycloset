class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  has_many :outfits, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_outfits, through: :likes, source: :outfit

  def already_liked?(outfit)
    self.likes.exists?(outfit_id: outfit.id)
  end

  mount_uploader :image, ImageUploader
end
