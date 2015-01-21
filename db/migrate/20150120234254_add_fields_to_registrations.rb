class AddFieldsToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :course_id, :int
    add_column :registrations, :semester_id, :int
  end
end
