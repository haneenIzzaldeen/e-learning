class RenameCoursesColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :courses, :course_name, :name
  end
end
