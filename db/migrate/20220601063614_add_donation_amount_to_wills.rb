class AddDonationAmountToWills < ActiveRecord::Migration[6.1]
  def change
    add_column :wills, :donation_amount, :integer
  end
end
