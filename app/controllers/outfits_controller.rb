class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all.order("created_at DESC")
  end

  def new
    @outfit = Outfit.new
  end

  def create
    Outfit.create(outfit_params)
    redirect_to user_path(current_user)
    
  end

  private

  def outfit_params
    params.require(:outfit).permit(:image, :text, :content).merge(user_id: current_user.id)
  end


end
