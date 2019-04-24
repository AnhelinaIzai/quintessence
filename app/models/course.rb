class Course < ApplicationRecord
	#mount_uploader :avatar, AvatarUploader
    has_many :lessons
    mount_uploaders :documents, DocumentUploader
    serialize :documents, JSON
end
