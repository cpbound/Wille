class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :user, :name
    add_column :user, :email
    add_column :user, :phone
    add_column :user, :address
    add_column :user, :age, :integer
    add_column :user, :marital_status
    add_column :user, :children
    add_column :user, :pets
  end
end
