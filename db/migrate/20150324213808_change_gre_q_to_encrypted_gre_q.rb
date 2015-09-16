class ChangeGreQToEncryptedGreQ < ActiveRecord::Migration
  def up
    remove_column :students, :gre_q
    add_column :students, :encrypted_gre_q, :float
  end

  def down
    add_column :students, :gre_q, :float
    remove_column :students, :encrypted_gre_q
  end
end
