class GamesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :rating)
  end

end
