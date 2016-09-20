class RemoveGreQFromStudents < ActiveRecord::Migration
  def up
    remove_column :students, :gre_q
  end

  def down
    add_column :students, :gre_q, :int
  end
end
