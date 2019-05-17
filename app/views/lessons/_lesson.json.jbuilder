json.extract! lesson, :id, :course_id, :title, :desc, :attachment, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
