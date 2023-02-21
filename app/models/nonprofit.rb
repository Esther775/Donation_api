class Nonprofit < ApplicationRecord
  has_many :user_nonprofits
  belongs_to :catagory
end
