class AddCitationsToFaculty < ActiveRecord::Migration
  def change
    add_column :faculties, :citations, :int
    add_column :faculties, :department, :string
    add_column :faculties, :title, :string
    add_column :faculties, :laboratory_name, :string
    add_column :faculties, :google_scholar_web_page, :string 
    add_column :faculties, :retired_date, :date
    add_column :faculties, :date_left, :date
  end
end
