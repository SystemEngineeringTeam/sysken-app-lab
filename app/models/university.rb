class University < ApplicationRecord
    belongs_to :prefecture
    has_many :labs
end
