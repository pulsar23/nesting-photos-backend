class User < ApplicationRecord
  has_many :own_albums, class_name: "Album", foreign_key: "admin_id"
  has_many :user_albums#, :class_name => "UserAlbum"
  has_many :albums, through: :user_albums
  has_many :photos
  has_secure_password
  # validates :username, uniqueness: { case_sensitive: false }
  # validates :username, presence: true
  # validates :email, presence: true
  # validates :password, presence: true
end
