class StatsController < ApplicationController
  before_action :authenticate_user

  def create
    @stat = Stat.create(
      name: params[:name],
      count: 0,
    )
  end

  def index
  end

  def show
  end

  def update
  end

  def destroy
  end
end
