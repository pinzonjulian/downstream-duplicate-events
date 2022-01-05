class CreateChatByMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_by_messages do |t|
      t.string :content

      t.timestamps
    end
  end
end
