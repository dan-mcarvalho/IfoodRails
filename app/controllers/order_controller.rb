class OrderController < ApplicationController

  before_action :set_order, only: [:update, :destroy, :show_info]

  def remove_item

  end

  def clear_cart

  end

  def total_price #working
    render json: @cart.total
  end

  def add_item
    #colocar varios produtos no @order e por fim colocar no carrinho
    @order= Order.new(order_params)
    if @order.save
      render json: @order, status: 201
    else
     render json: @order.errors, status:422
    end
  end

  def set_product
    @order = Order.find(params[:id])
  end

  def order_params
    
    params.require(:order).permit(
      :cart_id,
      :product_id,
      :quantity
    )
  end
end
