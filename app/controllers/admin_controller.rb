class AdminController < ApplicationController
  #before_action :set_admin, only: [:allow_deliveryman, :register_rest_owner, :list_users, :update]

  def allow_deliveryman
    #@deliveryman = Deliveryman.find(params[:id])
    #@deliveryman.delivery_active{ 1 => {"delivery_active" => "1"}, 2 => { "delivery_active" => "2"}}
  end

  def register_rest_owner #working
    @restaurant_owner = RestaurantOwner.new(restaurant_owner_params)
    if @restaurant_owner.save
      render json: @restaurant_owner, status: 201
    else
      render json: @restaurant_owner.errors, status: 402
    end
  end

  def list_users  #working
    @users = User.all

    render json: @users
  end

  #update o q?
  def update

  end

  def restaurant_owner_params
    params.require(:restaurant_owner).permit(
      :name,
      :email,
      :telephone,
      :birthdate,
      :cpf,
      :address,
      :password,
      :password_confirmation
    )
  end

end
