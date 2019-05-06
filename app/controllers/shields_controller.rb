class ShieldsController < ApplicationController
  def index
    render json: Shield.all
  end
end
