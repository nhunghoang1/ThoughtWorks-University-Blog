class DropSurvey < ActiveRecord::Migration[6.0]
  def change
    drop_table :surveys
  end
end
