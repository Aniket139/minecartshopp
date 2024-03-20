class Admins::DashboardController < ApplicationController
  before_action :authenticate_admin!
  def index
    @categories = Category.all.count
    @products = Product.all.count
    @orders = Order.all
    @total_revenew = @orders.includes(:product)
    @profit = []
    @total_revenew.each do |price|
      @profit << price.product.sell_price - price.product.purchase_price
    end
  end
end