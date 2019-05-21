class Lesson < ApplicationRecord
	belongs_to :course
	has_many :question

	mount_uploaders :attachment, AttachmentUploader
  serialize :attachment, JSON

	mount_uploader :avatar, AvatarUploader
end
