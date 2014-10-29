ActiveAdmin.register ResearchArea do
 index do
 	selectable_column
    column :name
    column :description
    default_actions
  end

  show do
	attributes_table do
      row :name
      row :description
    end
    active_admin_comments
  end

  filter :name
  filter :description
end
