class CompaniesController < ApplicationController
    def index
        render json: Company.all
    end

    def show
        @company = Company.find(params[:id])
        render json: {company: @company, jobs: @company.jobs, volunteers: @company.volunteers}
        
    end

    def create
        @company = Company.create(company)
        render json: @company
    end

    private

    def company_params
        params.require(:company).permit(:name)
    end
end
