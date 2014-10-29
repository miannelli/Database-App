ActiveAdmin.register Course do
	menu :label => "Courses"

	index do
	  selectable_column
	  column :name
	  column :number_of_credits
	  default_actions
	end

	show do |course|
	  attributes_table do
	  	row :name
	  	row :number_of_credits
	  end
	  active_admin_comments
	end

end
