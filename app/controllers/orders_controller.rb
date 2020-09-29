class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @order_donation = OrderDonation.new
  end
 
  def create
    @item = Item.find(params[:item_id])
    @order_donation = OrderDonation.new(donation_params)
    if @order_donation.valid?
      pay_item
      @order_donation.save
      return redirect_to root_path
    else
      render 'index'
    end
  end
 
  private
 
  def donation_params
    params.require(:order_donation).permit(:postal_code, :state_id, :city, :address, :phone_number, :building_name,).merge(user_id: current_user.id, item_id: @item.id, token: params[:token])
   end
 
  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @item.price,
      card: donation_params[:token],
      currency:'jpy'
    )
  end
 
 end