class VolunteerJobsController < ApplicationController
        def index
        render json: VolunteerJob.all
    end

    def show
        @volunteer_job = VolunteerJob.find(params[:id])
        render json: {volunteer_job: @volunteer_job}
    end

    def create
        @volunteer_job = VolunteerJob.create(volunteer_job_params)
        render json: @volunteer_job
    end

    private

    def volunteer_job_params
        params.require(:volunteer_job).permit(:volunteer_id, :job_id, :hours_completed)
    end

end
