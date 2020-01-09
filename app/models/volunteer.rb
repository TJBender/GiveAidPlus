class Volunteer < ApplicationRecord
    has_many :jobs
    has_many :companies, through: :jobs
end
