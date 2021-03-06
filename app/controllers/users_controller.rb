class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @outfits = @user.outfits.all.order("created_at DESC")
    @items = @user.items.all.order(created_at: :desc).limit(6)
    @outfits_count = @user.outfits.count
    @items_count = @user.items.count
  end

  def edit
    user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :image, :text)
  end

  
end
