class AddAttributesToMessage < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :conversation_id, :integer
    add_column :messages, :content, :text
  end
end
