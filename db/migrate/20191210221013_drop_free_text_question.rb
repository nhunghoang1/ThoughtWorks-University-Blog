class DropFreeTextQuestion < ActiveRecord::Migration[6.0]
  def change
    drop_table :free_text_questions
  end
end
