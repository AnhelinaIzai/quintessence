class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.string :country
      t.string :avatar

      t.timestamps
    end
  end
end
