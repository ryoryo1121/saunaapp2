class AddNamesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :integer
  end
end
