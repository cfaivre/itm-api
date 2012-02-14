class AddIsSuperAdminToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :is_super_admin, :boolean
  end
end
