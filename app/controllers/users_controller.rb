class UsersController < ApplicationController

  def show
    @user = User.find(current_user[:id])
    @outfits = @user.outfits.all.order("created_at DESC")
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
