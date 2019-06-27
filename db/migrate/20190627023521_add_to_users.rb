class AddToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :address, :string
  	add_column :users, :image, :string
  	add_column :users, :phone, :integer
  	add_column :users, :date, :datetime
  end
end
