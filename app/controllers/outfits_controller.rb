class OutfitsController < ApplicationController

  def index
  end

  def new
    @outfit = Outfit.new
  end

  def create
    Outfit.create(outfit_params)
    redirect_to root_path
    
  end

  private
  def outfit_params
    params.require(:outfit).permit(:image, :text, :content).merge(user_id: current_user.id)
  end


end
