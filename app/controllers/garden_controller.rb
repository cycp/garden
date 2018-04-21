class GardenController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
    @plants = Garden.where(garden: @garden)
  end
end
