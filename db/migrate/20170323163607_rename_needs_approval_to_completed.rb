class RenameNeedsApprovalToCompleted < ActiveRecord::Migration[5.0]
  def change
    rename_column :submissions, :needs_approval, :completed
  end
end
