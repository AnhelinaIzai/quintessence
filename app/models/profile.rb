class Profile < ApplicationRecord
	belongs_to :user
	mount_uploaders :avatars, AvatarUploader
	serialize :avatars, JSON
end
