class AddGreQToStudents < ActiveRecord::Migration
  def change
    add_column :students, :gre_q, :int
  end
end
