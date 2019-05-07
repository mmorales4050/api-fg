class CharacterArmorsController < ApplicationController
  def index
    render json: CharacterArmor.all
  end
end
