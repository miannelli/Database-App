class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :number_of_credits
      t.timestamps
    end
  end
end
