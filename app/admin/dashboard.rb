ActiveAdmin.register_page "Dashboard" do
  menu :parent => "Admin"  

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    
    columns do
      column do
        panel "New Students" do
          ul do
            Student.last(5).map do |student|
              li link_to("#{student.to_s}", admin_student_path(student))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end
end
