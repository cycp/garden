class PlantsController < ApplicationController
    before_action :authenticate_user!

    def new 
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
    end
    def plant_params 
		params.require(:plant).permit(:ndex)
	end


end
