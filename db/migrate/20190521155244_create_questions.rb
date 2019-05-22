class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :questionable_id
      t.string :questionable_type
      t.references :lesson, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
