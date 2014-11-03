class AddStuffToStudent < ActiveRecord::Migration
  def change
    add_column :students, :street_address, :string
    add_column :students, :city, :string
    add_column :students, :state, :string
    remove_column :students, :address, :string
  end
end
