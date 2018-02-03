class AddSecondexamstatusToStudents < ActiveRecord::Migration
  class Student < ActiveRecord::Base
  end
  def change
    add_column :students, :second_exam_status, :string
  end
end
