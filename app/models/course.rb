class Course < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	
end
