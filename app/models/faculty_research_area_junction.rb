class FacultyResearchAreaJunction < ActiveRecord::Base
  attr_accessible :research_area_id,
  	:faculty_id

  belongs_to :faculty
  belongs_to :research_area
end
