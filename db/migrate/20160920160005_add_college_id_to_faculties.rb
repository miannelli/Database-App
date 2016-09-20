class AddCollegeIdToFaculties < ActiveRecord::Migration
  def change
    add_column :faculties, :college_id, :int
  end
end
