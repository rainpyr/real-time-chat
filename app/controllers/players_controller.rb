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
  end

  def destroy
  end
end # PlayersController
