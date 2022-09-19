class PlayersController < ApplicationController
  before_action :authenticate_user

  def new
    @player = Player.new
  end #new

  def create
    @player = Player.create(
      name: params[:name],
      number: params[:number],
    )
  end #create

  def index
    render json: Player.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end # PlayersController
