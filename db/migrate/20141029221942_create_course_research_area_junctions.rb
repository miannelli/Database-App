class CreateCourseResearchAreaJunctions < ActiveRecord::Migration
  def change
    create_table :course_research_area_junctions do |t|
      t.belongs_to :course
      t.belongs_to :research_area
      t.timestamps
    end
  end
end
