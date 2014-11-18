class Mentor < ActiveRecord::Base
  attr_accessible :start_date,
    :end_date,
    :student_id,
    :faculty_id

  belongs_to :faculty
  belongs_to :student

  validates :start_date, presence: true

  def to_s
    "#{self.faculty.first_name} #{self.faculty.last_name} - #{self.faculty.banner_id}"
  end
end
