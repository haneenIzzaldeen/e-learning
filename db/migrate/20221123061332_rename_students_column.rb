class RenameStudentsColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :student_name, :name
  end
end
