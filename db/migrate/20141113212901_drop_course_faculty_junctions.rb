class DropCourseFacultyJunctions < ActiveRecord::Migration
  def up
    drop_table :course_faculty_junctions
  end

  def down
    create_table :course_faculty_junctions do |t|
      t.belongs_to :course
      t.belongs_to :faculty
      t.string :syllabus
      t.timestamps
    end
  end
end
