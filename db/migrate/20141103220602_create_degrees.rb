class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :type
      t.string :abbreviation
      t.timestamps
    end
  end
end
