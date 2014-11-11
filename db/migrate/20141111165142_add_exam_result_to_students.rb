class AddExamResultToStudents < ActiveRecord::Migration
  def change
    add_column :students, :first_exam_result, :float
    add_column :students, :first_exam_second_date, :date
    add_column :students, :google_scholar, :string
    add_column :students, :web_page, :string
  end
end
