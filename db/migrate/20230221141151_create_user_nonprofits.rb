class CreateUserNonprofits < ActiveRecord::Migration[7.0]
  def change
    create_table :user_nonprofits do |t|

      t.timestamps
    end
  end
end
