class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :image_url
      t.belongs_to :user, foreign_key: true
      t.belongs_to :album, foreign_key: true

      t.timestamps
    end
  end
end
