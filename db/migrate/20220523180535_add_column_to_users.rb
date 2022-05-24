class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :marital_status, :string
    add_column :users, :children, :string
    add_column :users, :pets, :string
  end
end
