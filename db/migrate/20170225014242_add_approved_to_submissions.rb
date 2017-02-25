class AddApprovedToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :approved, :boolean
  end
end
