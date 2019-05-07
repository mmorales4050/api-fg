class CharacterWeaponsController < ApplicationController
  def index
    render json: CharacterWeapon.all
  end
end
