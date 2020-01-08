class JobsController < ApplicationController
    #   before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
  end


  def show
    @job = Job.find_by(params[:id])
  end

  # GET /job/new
  def new
    @job = Job.new
  end

  # GET /job/:id/edit
  def edit
  end

  # POST /job

  def update

  end

  def destroy

  end

  private

    def job_params
      params.require(:job).permit(:name)
    end

end
