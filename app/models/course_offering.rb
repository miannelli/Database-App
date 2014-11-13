class CourseOffering < ActiveRecord::Base
  attr_accessible :semester_id,
    :course_id,
    :syllabus_link

  has_one :course
end
