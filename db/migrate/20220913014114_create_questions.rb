class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question, null: false
      t.references :question_frames, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
