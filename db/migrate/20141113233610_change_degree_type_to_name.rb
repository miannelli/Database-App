class ChangeDegreeTypeToName < ActiveRecord::Migration
  def up
    remove_column :degrees, :type
    add_column :degrees, :name, :string
  end

  def down
    remove_column :degrees, :name
    add_column :degrees, :type, :string
  end
end
