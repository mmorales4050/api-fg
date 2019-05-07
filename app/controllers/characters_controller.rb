class CharactersController < ApplicationController

  def index
    render json: Character.all
  end

  def show
    render json: Character.find(params[:id])
  end

  def update
    character = Character.find(params[:id])
    character.update(character_params)
  end

  private

  def character_params
    params.require(:character).permit(:gold, :exp)
  end
end
