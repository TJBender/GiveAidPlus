class JobsController < ApplicationController

    def index
        render json: Job.all
    end

    def show
        @job = Job.find(params[:id])
        # render what you want to be able to see on the front end from here
        render json: {job: @job, company: @job.company, volunteers: @job.volunteers}
    end

    def create
        @job = Job.create(job_params)
        render json: @job
    end

    # def user_job
    #     @job = Job.find(params[:id])
    #     @volunteers = @job.volunteers
    #     render json: {volunteers: @volunteers, total_hours: @volunteer_jobs.sum(:hours)}
    # end

    private

    def job_params
        params.require(:job).permit(:company_id, :name, :hours)
    end

end
