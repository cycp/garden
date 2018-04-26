class PlantsController < ApplicationController

  def new
    permitted = params.require(:id, :garden).permit(:plantID,:garden)
    @plant = Plant.new(id:permitted[:id],garden:permitted[:garden])
    if @plant.valid?
      @plant.save
    end
end
