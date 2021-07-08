class RestaurantOwnerController < ApplicationController
  before_action :set_restaurant_owner, only: [:change_order_status, :update_product, :set_stock, :show_stock]

  #Função CanCanCan
  #Precisa saber quem está fazendo a requisição
  #load_and_authorize_resource
  
  def change_order_status#

  end

  def update_product 
    if @product.update(product.params)
      render json: @product
    else
      render json: @product.errors, status: 422
    end
  end

  def create_restaurant #working
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render json: @restaurant, status: 201
    else
      render json: @restaurant.errors, status: 402
    end
  end

  def set_stock

  end

  def show_stock
    @stock = Product.all

    render json: @stock
  end

  def set_restaurant_owner
    @restaurant_owner = RestaurantOwner.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(
      :name, 
      :logo, 
      :foodtype, 
      :openinghours, 
      :address, 
      :cnpj,
      :restaurant_owner_id
    )
  end

end
