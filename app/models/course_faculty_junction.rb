class CourseFacultyJunction < ActiveRecord::Base
  attr_accessible :course_id, :faculty_banner_id, :syllabus
  validates :course_id, presence: true
  validates :faculty_id, presence: true

  belongs_to :course
  belongs_to :faculty
end
