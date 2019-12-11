class DropRatingQuestion < ActiveRecord::Migration[6.0]
  def change
    drop_table :rating_questions
  end
end
