class CreateFunerals < ActiveRecord::Migration[6.1]
  def change
    create_table :funerals do |t|
      t.string :music
      t.string :no_invite
      t.text :sending_message
      t.string :arrangement
      t.string :representative
      t.string :ten_words
      t.text :memory
      t.text :unaware_state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
