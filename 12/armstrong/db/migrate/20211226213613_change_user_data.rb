class ChangeUserData < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
    add_column :users, :admin, :boolean
  end
end
