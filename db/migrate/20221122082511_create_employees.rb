class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.integer :age
      t.references :department, null: false, foreign_key: true
      t.timestamps
    end
  end
end
