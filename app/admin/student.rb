ActiveAdmin.register Student do
  menu :label => "Students"

  index do
    selectable_column
    column :banner_id, label: "Banner ID"
    column :first_name
    column :last_name
    column :year_entered
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :banner_id, label: "Banner ID"
      f.input :first_name
      f.input :last_name
      f.input :address
      f.input :phone
      f.input :cell_phone
      f.input :year_entered
      f.input :first_e
      f.input :second_e
      f.input :proposal_date
      f.input :defense_date
      f.input :gre_q
      f.input :gre_v
      f.input :degree_incoming
      f.input :dissertation_title
      f.input :date_left
      f.input :email

    end

    f.inputs "Courses" do
      f.input :courses
    end

    f.inputs "Thesis Committee" do
      f.has_many :thesis_committees, heading: 'Thesis Committee Member', :allow_destroy => true do |tc|
        tc.input :faculty
        tc.input :start_date
      end
    end

    f.inputs "Research Areas" do
      f.input :research_areas
    end

    f.actions
  end

  show :title => proc {|student| "#{student.first_name} #{student.last_name}" } do
  	attributes_table do
  	  row :banner_id
  	  row :first_name
  	  row :last_name
  	  row :address
  	  row :phone
  	  row :cell_phone
  	  row :year_entered
  	  row :first_e
  	  row :second_e
  	  row :proposal_date
  	  row :defense_date
  	  row :gre_q
  	  row :gre_v
  	  row :degree_incoming
  	  row :dissertation_title
  	  row :date_left
  	  row :email  	
  	end
    active_admin_comments
  end
  
  filter :banner_id, label: 'Banner ID'
  filter :first_name
  filter :last_name
  filter :address
  filter :phone
  filter :cell_phone
  filter :year_entered
  filter :first_e
  filter :second_e
  filter :proposal_date
  filter :defense_date
  filter :gre_q, label: 'GRE Quantitative'
  filter :gre_v, label: 'GRE Verbal'
  filter :degree_incoming
  filter :dissertation_title
  filter :date_left
  filter :email
  filter :courses
  filter :registrations
  filter :research_areas
  filter :thesis_committees, label: 'Thesis Committee Member'
  filter :faculties, label: 'Faculty'

end
