class CreateExecutors < ActiveRecord::Migration[6.1]
  def change
    create_table :executors do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
