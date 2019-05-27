class CreateTestQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :test_questions do |t|
      t.integer :course_id
      t.string :text

      t.timestamps
    end
  end
end
