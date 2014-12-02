class AddCrnToCourseOffering < ActiveRecord::Migration
  def change
    add_column :course_offerings, :crn, :int
  end
end
