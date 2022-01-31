class AddUserStatus < ActiveRecord::Migration[7.0]
  def change
    create_enum :user_status, ["volontier", "published", "admin", "member"]
  end
end
