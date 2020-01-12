class VolunteersController < ApplicationController

    def index
        render json: Volunteer.all
    end

    def show
        @volunteer = Volunteer.find(params[:id])
        render json: {volunteer: @volunteer, jobs: @volunteer.jobs, volunteers: @volunteer.volunteers}
        
    end

    def create
        @volunteer = Volunteer.create(volunteer_params)
        render json: @volunteer
    end

    private

    def volunteer_params
        params.require(:volunteer).permit(:name, :password, :phone_number)
        # work on this later and implement password of some sort
        # even if its just a find_or_create_by
    end
end
