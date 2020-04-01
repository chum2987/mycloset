class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all.order("created_at DESC")
    # @users = User.all 
  end

  def new
    @outfit = Outfit.new
  end

  def create
    Outfit.create(outfit_params)
    redirect_to user_path(current_user)
  end

  def show
    # user = User.find(params[:id])
    # @outfits = user.outfits
    # @outfit = @outfits.find(params[:id])
    @outfit = Outfit.find(params[:id])
  end

  private

  def outfit_params
    params.require(:outfit).permit(:image, :text, :content).merge(user_id: current_user.id)
  end


end
