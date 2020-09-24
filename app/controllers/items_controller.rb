class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    unless user_signed_in? 
    redirect_to new_user_session_path
    end
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
    redirect_to root_path
    else
    render :new
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :user, :category_id, :condition_id, :fee_id, :day_id, :address_id, :image).merge(user_id: current_user.id)
  end
end
