class UserNonprofit < ApplicationRecord
  belongs_to :user
  belongs_to :nonprofit
end
