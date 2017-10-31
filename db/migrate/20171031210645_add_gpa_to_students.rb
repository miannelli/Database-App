class AddGpaToStudents < ActiveRecord::Migration
  class Student < ActiveRecord::Base
  end
  def change
    add_column :students, :gpa, :float
  end
end
