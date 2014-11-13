class CreateAdjunctTeachings < ActiveRecord::Migration
  def change
    create_table :adjunct_teachings do |t|
      t.belongs_to :student
      t.belongs_to :semester
      t.integer :number_of_courses
      t.integer :total_credits
      t.timestamps
    end
  end
end
