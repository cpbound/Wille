class ChangeRepresentativeToFunerals < ActiveRecord::Migration[6.1]
  def change
    change_column :funerals, :representative, 'boolean USING CAST(representative AS boolean)'
  end
end
