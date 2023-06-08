class AddPicTableToCatagories < ActiveRecord::Migration[7.0]
  def change
        add_column :catagories, :picture, :string
  end
end
