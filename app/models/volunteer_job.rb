class VolunteerJob < ApplicationRecord
  belongs_to :volunteer
  belongs_to :job
end
