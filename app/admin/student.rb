ActiveAdmin.register Student do
  menu :label => "Students"

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

    f.actions
  end

  show :title => proc {|student| "#{student.first_name} #{student.last_name}" } do
  	attributes_table do
  	  row :banner_id, label: "Banner ID"
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
  end
  
end
