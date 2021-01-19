class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
    end

    def new
        @new_camper = Camper.new
    end

    def create 
        camper_params = params.require(:camper).permit(:name, :age)
        @new_camper = Camper.create(camper_params)
        redirect_to camper_path(@new_camper)
    end 

    def edit
        @edit_camper = Camper.find(params[:id])
    end

    def update
        camper_params = params.require(:camper).permit(:name, :age)
        @update_camper = Camper.find(params[:id])
        @update_camper.update(camper_params)
        redirect_to camper_path(@update_camper)
    end

    def delete
        camper = Camper.find(params[:id])
        camper.destroy
        redirect_to campers_path
    end

end
