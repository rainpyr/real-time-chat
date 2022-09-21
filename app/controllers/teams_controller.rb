class TeamsController < ApplicationController
  before_action :authenticate_user

  def new
  end

  def create
    @team = Team.create(
      name: params[:name],
    )
    render json: @team
  end #create

  def index
    render json: Team.all
  end

  def show
    @team = Team.find params[:id]
    render json: @team
  end

  def edit
  end

  def update
    team = Team.find params[:id]
    team.update(
      name: params[:name],
    )
  end

  def destroy
    Team.destroy params[:id]
  end
end # TeamsController
