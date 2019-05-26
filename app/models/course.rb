class Course < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
  has_many :lessons
  has_many :bookmarks

	
	def is_bookmarked user
    Bookmark.find_by(user_id: user.id, course_id: id)
  end
end
