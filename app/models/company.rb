class Company < ApplicationRecord
    has_many :jobs
    has_many :volunteers, through: :jobs
end
