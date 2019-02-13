class User < ApplicationRecord
  belongs_to :grade
  belongs_to :gender
  belongs_to :lab

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
    format:  { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
  validates :gender_id, presence: true
  validates :grade_id, presence: true
  validates :lab_id, presence:true
  # validates :context

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

end
