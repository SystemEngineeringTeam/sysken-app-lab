class User < ApplicationRecord
    belongs_to :grade
    belongs_to :gender
    belongs_to :lab
end
