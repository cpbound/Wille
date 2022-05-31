class DropExecutorsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :executors
  end
end
