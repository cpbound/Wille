class AddBodyToFunerals < ActiveRecord::Migration[6.1]
  def change
    add_column :funerals, :body, :string
  end
end
