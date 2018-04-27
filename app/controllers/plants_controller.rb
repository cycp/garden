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
  	plant = Plant.create(plant_params)
  	plant.garden_id = current_user.garden
    current_user.productivity += curr_plant.price
    current_user.time = plant_params[:amount]
  	plant.save!
  	redirect_to user_path(current_user.id)
  end

  def plant_params 
		params.require(:plant).permit(:ndex)
  end
end
