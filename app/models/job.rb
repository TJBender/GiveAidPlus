class Job < ApplicationRecord
    belongs_to :company
    has_many :volunteer_jobs
    has_many :volunteers, through: :volunteer_jobs

    after_create :add_user_as_volunteer 

    private 
    # create the connection?
    def add_user_as_volunteer 
        VolunteerJob.create(company: self.company, job: self)
    end

end
