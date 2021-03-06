class User < ActiveRecord::Base

  has_many :reviews

  has_secure_password


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: {case_sensitive: false}
  validates :password_digest, numericality: {greater_than_or_equal_to: 5}
end
