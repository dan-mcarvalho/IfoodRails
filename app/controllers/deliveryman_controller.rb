class DeliverymanController < ApplicationController
  before_action :set_deliveryman, only: [:finish_order, :accept_order, :update, :delete]

  def create #working
    @deliveryman = Deliveryman.new(deliveryman_params)
    if @deliveryman.save
      render json: @deliveryman, status: 201
    else
      render json: @deliveryman.errors, status: 402
    end
  end

  #def add_vehicle
  #end

  #def add_license
  #end

  def finish_order

  end

  def accept_order

  end

  def update
    if @deliveryman.update(deliveryman_params)
      render json: @deliveryman
    else
      render json: @deliveryman.errors, status: 422
    end
  end

  def delete
    @deliveryman.destroy
  end

  def set_deliveryman
    @deliveryman = Deliveryman.find(params[:id])
  end

  def deliveryman_params
    params.require(:deliveryman).permit(
      :name,
      :email,
      :telephone,
      :birthdate,
      :cpf,
      :address,
      :password,
      :password_confirmation,
      :vehicle_type,
      :driver_license
    )
  end
end
