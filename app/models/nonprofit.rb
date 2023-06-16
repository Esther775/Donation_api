class Nonprofit < ApplicationRecord
  has_many :user_nonprofits 
  has_many :users, through: :user_nonprofits
  belongs_to :catagory
end
