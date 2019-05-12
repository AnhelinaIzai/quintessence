class Lesson < ApplicationRecord
	belongs_to :course
	mount_uploader :vimeo_file, VimeoUploader, :mount_on => :vimeo
	#validates :course_id , presence: true
end
