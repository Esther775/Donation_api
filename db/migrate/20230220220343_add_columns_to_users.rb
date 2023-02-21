class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :location, :string
    add_column :users, :bio, :string
    add_column :users, :monthly_donation_amount, :integer
  end
end
