ActiveAdmin.register Semester do
  form do |f|
    f.inputs "Details" do
      f.semantic_errors *f.object.errors.keys
      f.input :session
      f.input :year
      f.actions
    end

    f.inputs "Course Offerrings" do
      f.has_many :course_offerings, :allow_destroy => true do |tc|
        tc.input :course_id, as: :select, collection: Course.all
        tc.input :syllabus_link
      end
      f.actions
    end

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
