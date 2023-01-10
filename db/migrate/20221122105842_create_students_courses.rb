class CreateStudentsCourses < ActiveRecord::Migration[7.0]
  def change
    create_join_table :courses , :students do |t|
      t.index [:course_id, :student_id]
      t.index [:student_id, :course_id]
    t.timestamps
    end
  end
end
