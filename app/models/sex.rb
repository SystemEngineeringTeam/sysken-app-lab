class Sex < ApplicationRecord
    has_many :users
    has_many :grades, through: :users
    has_many :labs, through: :users
end
