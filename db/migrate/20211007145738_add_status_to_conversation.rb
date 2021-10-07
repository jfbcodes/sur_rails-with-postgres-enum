class AddStatusToConversation < ActiveRecord::Migration[7.0]
  def change
    create_enum "statuses", %w[pending in_progress finished]
    add_column :conversations, :status, :statuses
  end
end
