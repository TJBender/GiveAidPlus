class JobsController < ApplicationController

    def index
        render json: Job.all
    end

    def show
        @job = Job.find(params[:id])
        render json: {job: @job, company: @job.company, volunteers: @job.volunteers}
    end

    def create
        @job = Job.create(job_params)
        render json: @job
    end

    private

    def job_params
        params.require(:job).permit(:company_id, :name, :hours)
    end

end
