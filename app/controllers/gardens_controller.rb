class GardensController < ApplicationController
<<<<<<< HEAD
  def show
    @garden = Garden.find(params[:id])
    @plants = Plant.where(garden:@garden)
  end

  def plant
    @garden = Garden.find(params[:id])
    @plants = Plant.where(garden:@garden)
    return @plants.new
=======
>>>>>>> a454feac602e5cfbe4fbd8c75194240a1a26ebcc
end
