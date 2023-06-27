class UpdateMessagesTable < ActiveRecord::Migration[7.0]
  def change
    remove_reference :messages, :match, index: true, foreign_key: true

    unless column_exists? :messages, :conversation_id
      add_reference :messages, :conversation, foreign_key: true
    end
  end
end
