class Lesson < ApplicationRecord
	belongs_to :course
	 mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   validates :name, presence: true
end
