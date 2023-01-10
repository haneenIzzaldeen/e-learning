class Employee < ApplicationRecord
belongs_to :department
scope :age , -> { where(age: 0..21) }
scope :with_last_name , ->(name){where(employee_name: name)}
end
