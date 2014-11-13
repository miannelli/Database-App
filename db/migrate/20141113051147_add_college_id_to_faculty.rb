class AddCollegeIdToFaculty < ActiveRecord::Migration
  def chang
    add_column :faculties, :college_id, :int
  end
end
