class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.string :text
      t.boolean :correct
      t.integer :test_question_id

      t.timestamps
    end
  end
end
