class AddReferenceToWill < ActiveRecord::Migration[6.1]
  def change
    add_reference :wills, :executor, foreign_key: { to_table: :users }
  end
end
