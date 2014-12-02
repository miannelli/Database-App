ActiveAdmin.register Student do
  menu :label => "Students"

  index do
    selectable_column
    column :banner_id, label: "Banner ID"
    column :first_name
    column :last_name
    column :year_entered
    actions
  end

  form do |f|
    tabs do
      tab 'Details' do
        f.inputs "Details" do
          f.input :banner_id, label: "Banner ID"
          f.input :first_name
          f.input :last_name
          f.input :street_address
          f.input :city
          f.input :state
          f.input :phone
          f.input :cell_phone
          f.input :year_entered
          f.input :first_e, label: "First Exam", :as => :datepicker
          f.input :first_exam_second_date, :as => :datepicker
          f.input :first_exam_result
          f.input :second_e, label: "Second Exam", :as => :datepicker
          f.input :proposal_date, :as => :datepicker
          f.input :defense_date, :as => :datepicker
          f.input :gre_q, label: "GRE Quantitative"
          f.input :gre_v, label: "GRE Verbal"
          f.input :dissertation_title
          f.input :google_scholar
          f.input :web_page
          f.input :date_left, :as => :datepicker
          f.input :email
        end

        f.inputs "Degree Incoming" do
          g = {}
          Degree.all.each {|f| g.merge!({f.to_s => f.id})}
          f.input :degree_id, as: :select, collection: g
          f.input :degree_incoming
        end

        f.inputs "Research Areas" do
          f.input :research_areas
        end
      end

      tab 'Adjunct Teaching Positions' do
        f.inputs "Adjunct Teaching Positions" do
          f.has_many :adjunct_teachings, heading: 'Adjunct Teaching Positions', :allow_destroy => true do |tc|
            tc.input :semester
            tc.input :number_of_courses
            tc.input :total_credits
          end
        end
      end

      tab 'Thesis Committee' do
        f.inputs "Thesis Committee" do
          g = {}
          Faculty.all.each {|f| g.merge!({f.to_s => f.id})}
          f.has_many :thesis_committees, heading: 'Thesis Committee Member', :allow_destroy => true do |tc|
            tc.input :faculty, collection: g
            tc.input :start_date, as: :datepicker
            tc.input :end_date, as: :datepicker
          end
        end
      end

      tab 'Mentors' do
        f.inputs do
          g = {}
          Faculty.all.each {|f| g.merge!({f.to_s => f.id})}
          f.has_many :mentors, :allow_destroy => true do |tc|
            tc.input :faculty, collection: g
            tc.input :start_date, as: :datepicker
            tc.input :end_date, as: :datepicker
          end
        end
      end

      tab 'Courses' do
        f.inputs do
          f.has_many :registrations, :allow_destroy => true do |tc|
            tc.input :course_offering
          end
        end
      end


    end
    f.actions
  end

  show :title => proc {|student| "#{student.first_name} #{student.last_name}" } do
  	attributes_table do
  	  row :banner_id
  	  row :first_name
  	  row :last_name
  	  row :street_address
      row :city
      row :state
  	  row :phone
  	  row :cell_phone
  	  row :year_entered
  	  row :first_e
      row :first_exam_second_date
      row :first_exam_result
  	  row :second_e
  	  row :proposal_date
  	  row :defense_date
  	  row :gre_q
  	  row :gre_v
  	  row :degree_incoming
  	  row :dissertation_title
      row :google_scholar
      row :web_page
  	  row :date_left
  	  row :email  	
  	end
    active_admin_comments
  end
  
  filter :banner_id, label: 'Banner ID'
  filter :first_name
  filter :last_name
  filter :street_address
  filter :city
  filter :state
  filter :phone
  filter :cell_phone
  filter :year_entered
  filter :first_e
  filter :first_exam_second_date
  filter :first_exam_result
  filter :second_e
  filter :proposal_date
  filter :defense_date
  filter :gre_q, label: 'GRE Quantitative'
  filter :gre_v, label: 'GRE Verbal'
  filter :degree_incoming
  filter :dissertation_title
  filter :google_scholar
  filter :web_page
  filter :date_left
  filter :email
  filter :courses
  filter :registrations
  filter :research_areas
  filter :thesis_committees, label: 'Thesis Committee Member'
  filter :faculties, label: 'Faculty'
  filter :adjunct_teachings #We want this to be where adjunct teaching is true

end
