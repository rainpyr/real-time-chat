class StatsController < ApplicationController
  before_action :authenticate_user

  def create
    @stat = Stat.create(
      name: params[:name],
      count: 0, # initial value
    )
    render json: @stat
  end

  def index
    render json: Stat.all
  end

  def show
    @stat = Stat.find params[:id]
    render json: @stat
  end

  def update
    stat = Stat.find params[:id]
    stat.update(
      name: params[:name],
      count: params[:count],
    )
  end

  def destroy
    Stat.destroy params[:id]
  end
end
