class ChangeBannerIdToString < ActiveRecord::Migration
  def up
    change_column :students, :banner_id, :string
    change_column :faculties, :banner_id, :string
  end

  def down
    change_column :students, :banner_id, :integer
    change_column :faculties, :banner_id, :integer
  end
end
