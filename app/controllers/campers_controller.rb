class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def show
        # byebug
        @camper = Camper.find(params[:id])
    end

end
