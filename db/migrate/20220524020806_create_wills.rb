class CreateWills < ActiveRecord::Migration[6.1]
  def change
    create_table :wills do |t|
      t.string :assets_range
      t.string :residuary
      t.string :primary_beneficiaries
      t.string :donation
      t.string :signature
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
