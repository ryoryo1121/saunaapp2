class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name, null: false
      t.string :description
      t.string :addressß

      t.integer :sauna_temp
      t.integer :mizuburo_temp

      t.boolean :sauna_tv

      has_one_attached :image
      # 画像ようカラムはあとで追加


      t.timestamps
    end
  end
end
