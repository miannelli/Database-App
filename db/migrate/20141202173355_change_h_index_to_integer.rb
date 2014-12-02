class ChangeHIndexToInteger < ActiveRecord::Migration
  def up
    remove_column :faculties, :h_index
    add_column :faculties, :h_index, :int
  end

  def down
    remove_column :faculties, :h_index
    add_column :faculties, :h_index, :float
  end
end
