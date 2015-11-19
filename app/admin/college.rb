ActiveAdmin.register College do
  menu :label => "Colleges and Affiliations"



  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :street
      f.input :city
      f.input :state
      f.input :country
    end


    f.actions
  end



end
