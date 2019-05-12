class AddConfirmableToDevise < ActiveRecord::Migration[5.1]
  # Note: You can't use change, as User.update_all will fail in the down migration
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmation_sent_at, :datetime
    add_index :users, :confirmation_token, unique: true
  end

  def down
    remove_columns :users, :confirmation_token, :confirmation_sent_at
  end
end
