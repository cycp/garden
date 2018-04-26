class GardensController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
    @plants = Plant.where(garden:@garden)
  end

  def plant
    @garden = Garden.find(params[:id])
    @plants = Plant.where(garden:@garden)
    return @plants.new
end
