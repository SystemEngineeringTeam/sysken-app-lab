class User < ApplicationRecord
    belongs_to :grade
    belongs_to :sex
    belongs_to :lab
end
