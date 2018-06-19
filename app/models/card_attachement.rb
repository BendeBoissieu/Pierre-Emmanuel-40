class CardAttachement < ApplicationRecord
  belongs_to :card

  mount_uploader :avatar, AvatarUploader
  mount_uploader :pictures, PicturesUploader

end

