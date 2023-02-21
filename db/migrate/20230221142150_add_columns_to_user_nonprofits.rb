class AddColumnsToUserNonprofits < ActiveRecord::Migration[7.0]
  def change
    add_column :user_nonprofits, :user_id, :integer
    add_column :user_nonprofits, :nonprofit_id, :integer
    
  end
end
