class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.date :start_date
      t.date :end_date
      t.belongs_to :faculty
      t.belongs_to :student
      t.timestamps
    end
  end
end
