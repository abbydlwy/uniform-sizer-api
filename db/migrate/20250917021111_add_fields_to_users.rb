class AddFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :theme_preference, :string
  end
end
