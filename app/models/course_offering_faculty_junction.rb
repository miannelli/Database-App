class CourseOfferingFacultyJunction < ActiveRecord::Base
  attr_accessible :course_offering_id, 
    :faculty_id,
    :faculty_banner_id, 
    :syllabus
  
  validates :course_offering_id, presence: true
  validates :faculty_id, presence: true

  belongs_to :course_offering
  belongs_to :faculty

end
