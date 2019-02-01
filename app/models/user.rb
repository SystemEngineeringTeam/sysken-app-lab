class User < ApplicationRecord
  belongs_to :grade
  belongs_to :gender
  belongs_to :lab

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255}
  validates :gender, presence: true
  validates :grade, presence: true
  validates :lab, presence: true
  # validates :context, presence: true, length: { maximum: 100}

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

end
