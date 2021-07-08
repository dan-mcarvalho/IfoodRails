class UserController < ApplicationController
  before_action :set_user, only: [:destroy, :update, :last_orders]
  
  def update #working
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: 422
    end
  end

  def destroy #working
    @user.destroy
  end

  def list_restaurants #working
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  def last_orders
    

  end

  def register #working
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201
    else
      render json: @user.errors, status: 402
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
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
