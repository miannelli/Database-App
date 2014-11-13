class CourseOffering < ActiveRecord::Base
  attr_accessible :semester_id,
    :course_id,
    :syllabus_link

  has_one :course

  def to_s
    "self.course"
  end

  def semester
    Semester.find_by_id(self.semester_id)
  end

  def course
    Course.find_by_id(self.course_id)
  end
end
