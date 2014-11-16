class CreateCourseOfferingFacultyJunctions < ActiveRecord::Migration
  def change
    create_table :course_offering_faculty_junctions do |t|
      t.belongs_to :course_offering
      t.belongs_to :faculty
      t.string :syllabus
      t.timestamps
    end
  end
end
