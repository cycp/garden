class PlantsController < ApplicationController

before_action :authenticate_user!
  def new
    # permitted = params.require(:id, :garden).permit(:plantID,:garden)
    # @plant = Plant.new(id:permitted[:id],garden:permitted[:garden])
    # if @plant.valid?
    #   @plant.save
    # end
    @plant = Plant.new
  end

  def index
    @plants = Plant.all
  end

  def show
    #Change this!
    @plant = Plant.all
  end

  def create
  	curr_plant = Plant.new(plant_params)
    curr_plant.garden_id = current_user.garden_id
    current_user.productivity += curr_plant.price
  end

  def plant_params 
		params.require(:plant).permit(:ndex)
	end
end
