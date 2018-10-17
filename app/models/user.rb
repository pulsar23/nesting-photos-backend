class User < ApplicationRecord
  has_many :albums
  has_many :user_albums
  has_many :albums, through: :user_albums
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  # validates :username, presence: true
  # validates :password, confirmation: true
  # validates :password_confirmation, presence: true
  # validates :email, uniqueness: true
  # validates :email, confirmation: true
  # validates :email_confirmation, presence: true
end
