class PlantsController < ApplicationController
<<<<<<< HEAD

  def new
    permitted = params.require(:id, :garden).permit(:plantID,:garden)
    @plant = Plant.new(id:permitted[:id],garden:permitted[:garden])
    if @plant.valid?
      @plant.save
    end
=======
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

>>>>>>> a454feac602e5cfbe4fbd8c75194240a1a26ebcc
end
