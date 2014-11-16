class Student < ActiveRecord::Base
  attr_accessible :banner_id,
      :first_name,
      :last_name,
      :street_address,
      :city,
      :state,
      :phone,
      :cell_phone,
      :year_entered,
      :first_e,
      :first_exam_second_date,
      :first_exam_result,
      :second_e,
      :proposal_date,
      :defense_date,
      :gre_q,
      :gre_v, 
      :degree_incoming,
      :dissertation_title,
      :google_scholar,
      :web_page,
      :date_left,
      :email,
      :course_ids,
      :thesis_committee_ids,
      :faculty_ids,
      :thesis_committees_attributes,
      :adjunct_teachings_attributes,
      :research_area_ids,
      :degree_id

  has_many :registrations
  has_many :course_offerings, through: :registrations
  has_many :student_research_area_junctions
  has_many :research_areas, through: :student_research_area_junctions
  has_many :thesis_committees
  has_many :faculties, through: :thesis_committees
  has_many :adjunct_teachings

  validates :banner_id, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :year_entered, presence: true
  validates :gre_q, presence: true
  validates :gre_v, presence: true
  validates :degree_incoming, presence: true

  accepts_nested_attributes_for :thesis_committees, :allow_destroy => true
  accepts_nested_attributes_for :adjunct_teachings, :allow_destroy => true

  def to_s
    "#{self.first_name} #{self.last_name} - #{self.banner_id}"
  end

  def degree
    Degree.find_by_id(self.degree_id)
  end

  def degree=(id)
    self.degree_id = id
  end
end
