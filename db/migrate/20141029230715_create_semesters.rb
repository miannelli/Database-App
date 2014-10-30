class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :year
      t.string :session
      t.timestamps
    end
  end
end
