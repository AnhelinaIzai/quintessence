class AddAvatarToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :avatar, :string
  end
end
