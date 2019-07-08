class AddCourToChapters < ActiveRecord::Migration[5.2]
  def change
    add_reference :chapters, :cour, foreign_key: true
  end
end
