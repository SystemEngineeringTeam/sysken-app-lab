class University < ApplicationRecord
    belongs_to :ken
    has_many :labs
end
