class Job < ApplicationRecord
    belongs_to :volunteer
    belongs_to :company
end
