class Card < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end
