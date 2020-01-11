class Job < ApplicationRecord
    belongs_to :company
    has_many :volunteer_jobs
    has_many :volunteers, through: :volunteer_jobs
end
