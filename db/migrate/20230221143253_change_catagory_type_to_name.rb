class ChangeCatagoryTypeToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :catagories, :type, :name
  end
end
