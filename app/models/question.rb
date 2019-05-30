class Question < ApplicationRecord
  belongs_to :lesson, dependent: :destroy
  belongs_to :user
end
