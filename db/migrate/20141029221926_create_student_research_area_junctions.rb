class CreateStudentResearchAreaJunctions < ActiveRecord::Migration
  def change
    create_table :student_research_area_junctions do |t|
      t.belongs_to :student
      t.belongs_to :research_area
      t.timestamps
    end
  end
end
