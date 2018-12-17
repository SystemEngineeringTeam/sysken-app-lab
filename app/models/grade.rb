class Grade < ApplicationRecord
    has_many :users
    has_many :sexes, through: :users
    has_many :labs, through: :users
end
