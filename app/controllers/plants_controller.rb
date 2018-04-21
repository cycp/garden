class PlantsController < ApplicationController
    before_action :authenticate_user!

    def index
      @plants = Plant.all
    end
    def show
      #Change this!
      @plant = Plant.all
    end

end
