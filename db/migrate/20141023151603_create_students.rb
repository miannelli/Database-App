class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :banner_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :cell_phone
      t.string :year_entered
      t.date :first_e
      t.date :second_e
      t.date :proposal_date
      t.date :defense_date
      t.float :gre_q
      t.float :gre_v
      t.string :degree_incoming
      t.string :dissertation_title
      t.date :date_left
      t.string :email
      t.timestamps
    end
  end
end
