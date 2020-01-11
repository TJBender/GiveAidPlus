class Volunteer < ApplicationRecord
    has_many :volunteer_jobs
    has_many :jobs, through: :volunteer_jobs
end
