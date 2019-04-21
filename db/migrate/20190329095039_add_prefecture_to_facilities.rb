class AddPrefectureToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :prefecture, :string
    add_column :facilities, :latitude, :float
    add_column :facilities, :longitude, :float
  end
end
