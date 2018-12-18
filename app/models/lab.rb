class Lab < ApplicationRecord
    belongs_to :university
    has_many :users
    has_many :grades, through: :users
    has_many :genders, through: :users
end
