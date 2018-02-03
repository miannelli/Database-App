class AddFirstexamstatusToStudents < ActiveRecord::Migration
  class Student < ActiveRecord::Base
  end
  def change
    add_column :students, :first_exam_status, :string
  end
end
