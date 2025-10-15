class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles do |t|
      t.integer :user_id, null: false
      t.uuid :role_id, null: false
      t.timestamps
    end

    add_foreign_key :user_roles, :users
    add_foreign_key :user_roles, :roles
  end
end