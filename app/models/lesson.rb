class Lesson < ApplicationRecord
	belongs_to :course
	has_many :question

	mount_uploaders :attachment, AttachmentUploader
  serialize :attachment, JSON

	mount_uploader :avatar, AvatarUploader

	def previous
	  Lesson.where(["id < ?", id]).last
	end

	def next
	  Lesson.where(["id > ?", id]).first
	end
end
