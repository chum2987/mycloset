class UsersController < ApplicationController

  def show
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
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
