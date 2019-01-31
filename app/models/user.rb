class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255}
  validates :gender, presence: true, length: { maximum: 10}
  validates :grade, presence: true, length: { maximum: 10}
  validates :lab, presence: true, length: { maximum: 50}
  #validates :context, presence: true, length: { maximum: 100}


  belongs_to :gradeb
  belongs_to :gender
  belongs_to :lab

　has_secure_password


end
