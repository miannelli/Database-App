class ChangeCourseIdToCourseOfferingId < ActiveRecord::Migration
  def up
    remove_column :registrations, :course_id
    add_column :registrations, :course_offering_id, :int
  end

  def down
    remove_column :registrations, :course_offering_id
    add_column :registrations, :course_id
  end
end
