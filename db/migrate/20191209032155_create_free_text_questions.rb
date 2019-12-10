class CreateFreeTextQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :free_text_questions do |t|
      t.string :title

      t.timestamps
    end
  end
end
