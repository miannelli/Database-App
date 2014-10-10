class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties, primary_key: :banner_id do |t|
      t.integer :banner_id
      t.string :first_name
      t.string :last_name
      t.float :h_index
      t.string :college_phone
      t.string :cell_phone
      t.string :fax
      t.string :email
      t.string :web_page
   	  t.string :room_number
   	  t.string :tel_extension
      t.timestamps
    end
  end
end