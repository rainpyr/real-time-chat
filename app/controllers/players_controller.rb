class PlayersController < ApplicationController
  before_action :authenticate_user

  def new
    @player = Player.new
  end #new

  def create
    @player = Player.create player_params
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

  private

  def player_params
    params.require(:player).permit(:name, :number)
  end
end # PlayersController
