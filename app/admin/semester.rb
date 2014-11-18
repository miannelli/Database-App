ActiveAdmin.register Semester do
  form do |f|
    tabs do
      tab "Details" do
        f.inputs "Details" do
          f.semantic_errors *f.object.errors.keys
          f.input :session
          f.input :year
        end
      end

      tab "Course Offerings" do
        f.inputs "Course Offerings" do
          g = {}
          Faculty.all.each {|f| g.merge!({f.to_s => f.id})}
          
          f.has_many :course_offerings, heading: "", :allow_destroy => true do |tc|
            tc.input :course_id, as: :select, collection: Course.all
            tc.input :faculties, as: :select, collection: g
            tc.input :syllabus_link
          end
        end
      end
      f.actions
    end
  end

  index do
    selectable_column
    column :session
    column :year
    actions
  end

  show title: proc {|semester| "#{semester.session} #{semester.year}"} do
    attributes_table do
      row :session
      row :year
    end
    active_admin_comments
  end

end
