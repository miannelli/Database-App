ActiveAdmin.register Semester do
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs
    f.buttons
  end

  index do
    selectable_column
    column :session
    column :year
    default_actions
  end

  show title: proc {|semester| "#{semester.session} #{semester.year}"} do
    attributes_table do
      row :session
      row :year
    end
    active_admin_comments
  end

end
