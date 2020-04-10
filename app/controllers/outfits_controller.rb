class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all.order("created_at DESC")
    @outfits_ranking = Outfit.find(Like.group(:outfit_id).order('count(outfit_id) desc').limit(3).pluck(:outfit_id))
  end

  def new
    @outfit = Outfit.new
  end

  def create
    Outfit.create(outfit_params)
    redirect_to user_path(current_user)
  end

  def show
    @outfit = Outfit.find(params[:id])
    @like = Like.new
  end

  def destroy
    outfit = Outfit.find(params[:id])
    outfit.destroy
    redirect_to root_path
  end

  private

  def outfit_params
    params.require(:outfit).permit(:image, :text, :content).merge(user_id: current_user.id)
  end


end
