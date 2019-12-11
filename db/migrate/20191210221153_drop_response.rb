class DropResponse < ActiveRecord::Migration[6.0]
  def change
    drop_table :responses
  end
end
