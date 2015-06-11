class OrdersController < ApplicationController
  def create
    product=product.find(params[:product_id])
    quantity= params[:quantity].to_i
    order = Order.new(quantity => quantity, :user_id => current_user.id, product_id => product_id)
    order.subtotal= order.calculate_subtotal
    order.tax= order.calculate_tax
    order.total=order.calculate_total
    order.save
    flash[:success] = "Thanks for shopping!"
    redirect_to "/products" 
  end
end
