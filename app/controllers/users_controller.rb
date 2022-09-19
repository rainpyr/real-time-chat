class UsersController < ApplicationController
  # check that we have the jwt token in the axios request header (except for create user)
  before_action :authenticate_user, except: [:create]
  # turn off default rails checkingany time you handle a post request
  skip_before_action :verify_authenticity_token, raise: false

  def current
    render json: current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    @user.save
    if @user.persisted?
      # TODO: add knock login here
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      # TODO: render json (make this an api)
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
