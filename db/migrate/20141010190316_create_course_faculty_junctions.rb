class CreateCourseFacultyJunctions < ActiveRecord::Migration
  def change
    create_table :course_faculty_junctions do |t|
      t.belongs_to :course
      t.belongs_to :faculty
      t.string :syllabus
      t.timestamps
    end
  end
end
