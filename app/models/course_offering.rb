class CourseOffering < ActiveRecord::Base
  attr_accessible :semester_id,
    :faculty_ids,
    :course_id,
    :syllabus_link,
    :crn

  has_one :course
  has_many :course_offering_faculty_junctions
  has_many :faculties, through: :course_offering_faculty_junctions
  has_many :registrations
  has_many :students, through: :registrations

  def to_s
    "#{self.course} - #{self.semester}"
  end

  def semester
    Semester.find_by_id(self.semester_id)
  end

  def course
    Course.find_by_id(self.course_id)
  end

end
