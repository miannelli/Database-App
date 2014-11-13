class CreateCourseOfferings < ActiveRecord::Migration
  def change
    create_table :course_offerings do |t|
      t.integer :semester_id
      t.integer :course_id
      t.string :syllabus_link
      t.timestamps
    end
  end
end
