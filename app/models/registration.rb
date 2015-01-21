class Registration < ActiveRecord::Base
  attr_accessible :course_offering_id, 
    :student_id,
    :semester_id,
    :course_id

  validates :course_id, presence: true
  validates :semester_id, presence: true
  validates :course_offering_id, presence: true

  before_validation :set_course_offering

  def set_course_offering
    course_offerings = CourseOffering.where(semester_id: self.semester, course_id: self.course)
    if course_offerings.count == 1
      self.course_offering = course_offerings.first
    elsif course_offerings.count > 1
      errors.add(:courses, "- Duplicate Course Offering Exists for this Semester")
    else
      errors.add(:courses, "- No Course Offering Exists for this Course/Semester Combination")
    end
  end

  belongs_to :course_offering
  belongs_to :student

  belongs_to :course
  belongs_to :semester


end
