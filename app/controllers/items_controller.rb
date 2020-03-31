class ItemsController < ApplicationController

  def new
  @item = Item.new
  end

  def create
  Item.create(item_params)
  redirect_to user_path(current_user)
  end

  private

  def item_params
  params.require(:item).permit(:image, :text).merge(user_id:current_user.id)
  end

end
