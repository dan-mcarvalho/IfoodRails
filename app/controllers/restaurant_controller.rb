class RestaurantController < ApplicationController
  before_action :set_restaurant, only: [:show_info, :total_sale_value, :restaurant_rating, :best_clients, :most_ordered_product]

  def show_info #working
    render json: @restaurant
  end

  def total_sale_value # no tested
    @total=0
    @values= Restaurant.carts.total
    
    @values.each do |value|
      @total+= value
    end
    render json: @total
  end

  def restaurant_rating # no tested
    @rating= Restaurant.rates/Restaurat.rates.length
    render json: @rating

  end

  def best_clients

  end

  def most_ordered_product #no tested
    @products= Restaurant.carts.products
    most_ordered= Hash.new(0)
    @products.each{|prod| most_ordered[prod]+=1}
    @most= most_ordered.sort_by{|prod, name| name}.last[0]
    render json: @most

  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def restaurant_params
    params.require(:restaurant).permit(

      :name, 
      :logo, 
      :foodtype, 
      :openinghours, 
      :adress, 
      :cnpj,
      :restaurant_owner_id
      
    )
  end

end
