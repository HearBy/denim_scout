class AddPhotoUrlToGarments < ActiveRecord::Migration
  def change
  	add_column :garments, :photo_url, :text
  end
end
