ActiveAdmin.register Faculty do
  menu :label => "Faculty"

  index title: proc { "Faculty" } do
    selectable_column
    column :banner_id, label: "Banner ID"
    column :first_name
    column :last_name
    column :h_index
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :banner_id, label: "Banner ID"
      f.input :first_name
      f.input :last_name
      f.input :h_index
      f.input :college_phone
      f.input :cell_phone
      f.input :fax
      f.input :email
      f.input :web_page
      f.input :room_number
      f.input :tel_extension
    end

    f.inputs "Courses" do
      f.input :courses
    end

    f.inputs "Research Areas" do
      f.input :research_areas
    end


    f.actions
  end

  show :title => proc {|faculty| "#{faculty.first_name} #{faculty.last_name}" } do
    attributes_table do
      row :banner_id, label: "Banner ID"
      row :first_name
      row :last_name
      row :h_index
      row :college_phone
      row :cell_phone
      row :fax
      row :email
      row :web_page
      row :room_number
      row :tel_extension
    end
    active_admin_comments
  end
end
