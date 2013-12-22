class ChangeModelIdToGarmentId < ActiveRecord::Migration
  def change
  	rename_column :items, :model_id, :garment_id
  end
end
