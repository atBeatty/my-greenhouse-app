require 'pry'

class PlantsController < ApplicationController
    def index
        @plants = Plant.all
    end


    def new
        @plant = Plant.new
    end

    def create
        @plant = Plant.create(plant_params)
        redirect_to plants_path
    end

    def show
        @plant = Plant.find_by_id(params[:id])
    end

    private
    def plant_params
        params.require(:plant).permit(:name, :species)
    end
end
