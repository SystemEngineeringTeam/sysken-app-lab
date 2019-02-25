class Lab < ApplicationRecord
    belongs_to :university
    has_many :users
    has_many :grades, through: :users
    has_many :genders, through: :users

    validates :lab, presence: true, length: {maximum: 50}
    validates :university_id, presence: true
    validates :overview, presence: true, length: {maximum: 500}
end
