class AddToCourse < ActiveRecord::Migration[5.2]
  def change
  	add_column :cours, :content, :text
  	add_column :cours, :time_learn, :integer
  	add_column :cours, :image_cours, :string
  end
end
