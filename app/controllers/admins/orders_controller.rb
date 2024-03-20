class  Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @orders = Order.includes(:customer, :product).all
  end  
end
