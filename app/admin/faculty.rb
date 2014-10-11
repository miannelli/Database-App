ActiveAdmin.register Faculty do
  menu :label => "Faculty"

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

    f.actions
  end

end
