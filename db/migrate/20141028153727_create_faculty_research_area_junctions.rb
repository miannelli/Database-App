class CreateFacultyResearchAreaJunctions < ActiveRecord::Migration
  def change
    create_table :faculty_research_area_junctions do |t|
      t.belongs_to :faculty
      t.belongs_to :research_area
      t.timestamps
    end
  end
end
