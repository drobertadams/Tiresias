class AddNeedApprovalToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :needs_approval, :boolean
  end
end
