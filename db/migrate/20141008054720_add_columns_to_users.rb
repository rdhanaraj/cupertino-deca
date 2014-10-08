class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :student_id, :integer
    add_column :users, :birthday, :string
    add_column :users, :gender, :string

    add_column :users, :address, :string
    add_column :users, :phone_number, :string

    add_column :users, :parent_name, :string
    add_column :users, :parent_email, :string
    add_column :users, :parent_phone_number, :string
  end
end
