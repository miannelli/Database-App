class AddDegreeIdToStudent < ActiveRecord::Migration
  def change
    add_column :students, :degree_id, :int
  end
end
