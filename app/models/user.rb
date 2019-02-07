class User < ApplicationRecord
  belongs_to :grade
  belongs_to :gender
  belongs_to :lab

  validates :name,  presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 255}
  validates :gender_id, presence: true
  validates :grade_id, presence: true
  validates :lab_id, presence:true
  # validates :context

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
