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
	  	row :syllabus
	  end
	  active_admin_comments
	end

	form do |f|
		f.inputs "Details" do
			f.input :name
			f.input :number_of_credits
			f.input :syllabus
		end

		f.inputs "Research Areas" do
	  	f.input :research_areas
	  end

	 	f.actions
	end


end
