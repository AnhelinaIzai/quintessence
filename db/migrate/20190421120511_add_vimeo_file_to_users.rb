class AddVimeoFileToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :vimeo_file, :string
  end
end
