class Change < ActiveRecord::Migration[5.0]
  def change
    rename_column :submissions, :user_id, :entry_id
  end
end
