class CreateNonprofits < ActiveRecord::Migration[7.0]
  def change
    create_table :nonprofits do |t|
      t.string :name
      t.integer :catagory_id
      t.string :description
      t.string :website
      t.string :picture

      t.timestamps
    end
  end
end
