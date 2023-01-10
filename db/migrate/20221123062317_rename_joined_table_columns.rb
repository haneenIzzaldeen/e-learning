class RenameJoinedTableColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :courses_students, :Student_id, :student_id
    rename_column :courses_students, :Course_id, :course_id
  end
end
