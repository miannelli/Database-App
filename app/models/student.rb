class Student < ActiveRecord::Base
  attr_accessible :banner_id,
      :first_name,
      :last_name,
      :address,
      :phone,
      :cell_phone,
      :year_entered,
      :first_e,
      :second_e,
      :proposal_date,
      :defense_date,
      :gre_q,
      :gre_v, 
      :degree_incoming,
      :dissertation_title,
      :date_left,
      :email,
      :course_ids

  has_many :registrations
  has_many :courses, through: :registrations

  validates :banner_id, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :year_entered, presence: true
  validates :gre_q, presence: true
  validates :gre_v, presence: true
  validates :degree_incoming, presence: true
end
