class SignupsController < ApplicationController

def new
    @campers = Camper.all
    @activities = Activity.all
    @signup = Signup.new
end

def create
   signup_params = params.require(:signup).permit(:camper_id, :activity_id)
   @signup = Signup.create(signup_params)
   redirect_to camper_path(@signup.camper)
end

end