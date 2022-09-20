class PlayersController < ApplicationController
  before_action :authenticate_user

  def new
    # do we need this action? Is the frontend taking care of this
    @player = Player.new
  end #new

  def create
    @player = Player.create(
      name: params[:name],
      number: params[:number],
    )
    render json: @player
  end #create

  def index
    render json: Player.all
  end

  def show
    # using the params players/:id find the player in the db an send the data to the frontend
    @player = Player.find params[:id]
    render json: @player
    # redirect back to login page if not authenticated
  end

  def edit
  end

  def update
    player = Player.find params[:id]
    player.update(
      name: params[:name],
      number: params[:number],
    )
  end

  def destroy
    Player.destroy params[:id]
  end
end # PlayersController
