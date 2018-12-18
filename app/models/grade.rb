class Grade < ApplicationRecord
    has_many :users
    has_many :genders, through: :users
    has_many :labs, through: :users
end
