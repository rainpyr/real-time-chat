class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    if user.persisted?
      session[:user_id] = user.id
      redirect_to chats_path
    else
      redirect_to signup_path, flash[:notice] = user.errors.messages
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
