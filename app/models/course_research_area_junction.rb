class CourseResearchAreaJunction < ActiveRecord::Base
  attr_accessible :research_area_id,
  	:course_id

  belongs_to :course
  belongs_to :research_area
end
