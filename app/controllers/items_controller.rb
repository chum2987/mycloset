class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to user_path(current_user)
  end

  
  def show
    @item = Item.find(params[:id])
  end
  
  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to user_path(current_user)
    @user = User.find(params[:id])
  end
  
  def closet
    user = User.find(params[:id])
    @items = user.items.all.order(created_at: :desc)
  end

  def search
    @items = Item.search(params[:search])

  end

  private

  def item_params
    params.require(:item).permit(:image, :text, :gender, :clothes, :color, :brand).merge(user_id:current_user.id)
  end

end
