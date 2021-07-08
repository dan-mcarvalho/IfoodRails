class CartController < ApplicationController
  before_action :set_cart, only: [:show, :update, :total_price, :add_item, :remove_item, :list_items, :clear_cart, :user_info, :restaurant_info, :show_status]

  def total_price #working
    render json: @cart.total
  end

  def add_item
    #colocar varios produtos no @product e por fim colocar no carrinho
    @produtos = []
    @produtos.push(product_params)  #Product.find(...), quantity
    #@produtos.save
    render json: @produtos
    #if @produtos.save
    #  render json: @produtos, status: 201
    #else
    # render json: @produtos.errors, status:422
    #end
  end

  def create_cart #working
    @cart = Cart.new(cart_params)
    if @cart.save
      render json: @cart, status: 201
    else
      render json: @cart.errors, status: 422
    end
  end

  def remove_item
    #DESTRUIR UMA ORDER ID
    
  end

  def list_items
    #MOSTRAR TODAS AS ORDERS COM O ID REFERENTE AO CARRINHO
    @produtos = Restaurant.find(@cart.restaurant_id)
    render json: @produtos.products
  end

  def clear_cart
    
  end

  def user_info #working
    @user = User.find(@cart.user_id)
    
    render json: @user
  end

  def restaurant_info #working
    @restaurant = Restaurant.find(@cart.restaurant_id)

    render json: @restaurant
  end

  def show_status #working
    @status = @cart.status

    render json: @status
  end

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def set_user
    @user = User.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(
      :user_id, 
      :restaurant_id
    )
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :product_id,
      :quantity
    )
  end

  
end
