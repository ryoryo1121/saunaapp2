class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password
      t.string :password_digest

      # 画像ようカラムはあとで追加


      t.timestamps
    end
  end
end
