class Semester < ActiveRecord::Base
  attr_accessible :year, 
    :session,
    :course_offerings_attributes

  has_many :course_offerings
  has_many :registrations

  validates :year, presence: true
  validates :session, 
    presence: true,
    inclusion:  {  
                  :in => ['Fall', 'Spring', 'Winter', 'Summer'] , 
                  message: "%{value} is not a valid session"
                }

  def to_s
    "#{self.session} #{self.year}"
  end

accepts_nested_attributes_for :course_offerings, :allow_destroy => true

end
