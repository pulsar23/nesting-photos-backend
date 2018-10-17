class Album < ApplicationRecord
  belongs_to :admin, class_name: "User"
  has_many :user_albums
  has_many :photos
  has_many :users, through: :user_albums
end
