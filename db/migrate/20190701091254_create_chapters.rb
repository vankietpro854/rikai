class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.string :name
      t.text :content
      t.integer :course_id
      t.string :chapter_image

      t.timestamps
    end
  end
end
