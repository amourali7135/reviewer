class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :reputation, :string
    add_column :users, :city, :string
    # add_column :users, :photo, :string
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :level, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :business_owner_role, :boolean, default: false
    add_column :users, :normal_user_role, :boolean, default: true
  end
end
