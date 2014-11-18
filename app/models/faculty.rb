class Faculty < ActiveRecord::Base
  attr_accessible :banner_id, 
    :first_name, 
    :last_name, 
    :h_index, 
    :college_phone, 
    :cell_phone, 
    :fax, :email, 
    :web_page, 
    :room_number, 
    :tel_extension, 
    :course_ids,
    :research_area_ids,
    :citations,
    :department,
    :title,
    :laboratory_name,
    :google_scholar_web_page,
    :retired_date,
    :date_left,
    :college_id,
    :college
      
  validates :banner_id, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :h_index, presence: true
  validates :email, presence: true
  validates :web_page, presence: true
  validates :room_number, presence: true

  has_many :course_offering_faculty_junctions
  has_many :course_offerings, through: :course_offering_faculty_junctions
  has_many :faculty_research_area_junctions
  has_many :research_areas, through: :faculty_research_area_junctions
  has_many :thesis_committees
  has_many :students, through: :thesis_committees
  has_many :mentors
  has_many :students, through: :thesis_committees

  def addCourse(course)
  	CourseFacultyJunction.create
  	{
  	  course_id: course.id,
  	  faculty: self.banner_id
  	}
  end
  
  def to_s
    "#{self.first_name} #{self.last_name} - #{self.banner_id}"
  end

  def college
    College.find_by_id(self.college_id)
  end

  def college=(c)
    self.college_id = c.id
  end

end
