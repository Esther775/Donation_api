class User < ApplicationRecord
  # mount_uploader :profile_picture, ProfilePictureUploader
  has_secure_password
validates :email, presence: true, uniqueness: true
has_many :user_nonprofits



end
