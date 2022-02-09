class AddCustomFieldToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :terms, :boolean
    add_column :users, :newletter, :boolean
    add_column :users, :membership_category, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
