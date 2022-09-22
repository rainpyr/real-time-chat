class MatchesController < ApplicationController
  before_action :authenticate_user

  def create
    @match = Match.create(
      date: Date.parse("September 24, 2022"),
      ground: "Adelaide Oval",
      start: Time.parse("5:00pm"),
      finish: Time.parse("8:00pm"),
      home_score: 13,
      away_score: 56,
    )
    render json: @match
  end

  def index
    render json: Match.all
  end

  def show
    @match = Match.find params[:id]
    render json: @match
  end

  def update
    match = Match.find params[:id]
    match.update(
      date: Date.parse("September 24, 2022"),
      ground: "Adelaide Oval",
      start: Time.parse("5:00pm"),
      finish: Time.parse("8:00pm"),
      home_score: 13,
      away_score: 56,
    )
  end

  def destroy
    Match.destroy params[:id]
  end
end
