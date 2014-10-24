class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :course
      t.belongs_to :student
      t.timestamps
    end
  end
end
