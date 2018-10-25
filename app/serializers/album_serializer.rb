class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :admin_id
  has_many :photos
  #has_many :users, through: :user_albums
end
