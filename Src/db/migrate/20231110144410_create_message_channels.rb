class CreateMessageChannels < ActiveRecord::Migration[7.1]
  def change
    create_table :message_channels do |t|
      t.integer :user1_id
      t.integer :user2_id
      t.string :channel_name
      t.integer :last_message_id
    end
  end
end
