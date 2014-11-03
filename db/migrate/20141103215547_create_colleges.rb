class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.timestamps
    end
  end
end
