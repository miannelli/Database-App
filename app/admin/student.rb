ActiveAdmin.register Student do

  form do |f|
    f.inputs "Details" do
      f.input :banner_id, label: "Banner ID"
      f.input :first_name
      f.input :last_name
      f.input :address
      f.input :phone
      f.input :cell_phone
      f.input :year_entered
      f.input :first_e
      f.input :second_e
      f.input :proposal_date
      f.input :defense_date
      f.input :gre_q
      f.input :gre_v
      f.input :degree_incoming
      f.input :dissertation_title
      f.input :date_left
      f.input :email

    end

    f.actions
  end
end
