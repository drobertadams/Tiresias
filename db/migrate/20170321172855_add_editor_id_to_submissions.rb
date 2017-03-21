class AddEditorIdToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :editor_id, :integer
    add_foreign_key :submissions, :users, column: :editor_id
  end
end
