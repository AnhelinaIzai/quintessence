class Course < ApplicationRecord
	#mount_uploader :avatar, AvatarUploader
    has_many :lessons

end
