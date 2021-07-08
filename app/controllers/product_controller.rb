class ProductController < ApplicationController
  before_action :set_product, only: [:update, :destroy, :show_info]

  def create #working
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: 201
    else
      render json: @product.errors, status: 402
    end
  end

  def update #working
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: 422
    end
  end

  def destroy #working
    @product.destroy
  end

  def show_info #working
    render json: @product
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :course_name, 
      :photo, 
      :description, 
      :price, 
      :portion,
      :restaurant_id
    )
  end
end
