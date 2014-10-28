class CreateResearchAreas < ActiveRecord::Migration
  def change
    create_table :research_areas do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
