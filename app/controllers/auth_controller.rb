class AuthController < ApplicationController
  def login
    @user_email = User.find_by(email: params[:user][:email])    

  if @user_email.authenticate(params[:user][:password_digest])
    token = JsonWebToken.encode({user_id: @user_email.id})
    render json: {token: token}  
  else
    render json: {error: "Não foi possível fazer o login."}, status: 401
  end

  def signup
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201
    else
      render json: @user.errors, status: 422
    end 
  end

  def user_params
    params.require(:user).permit(:name,
      :email,
      :telephone,
      :birthdate,
      :cpf,
      :address,
      :password_digest)
  end
end
end