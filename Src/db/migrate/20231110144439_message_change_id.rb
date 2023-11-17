class MessageChangeId < ActiveRecord::Migration[7.1]
  def up
    change_table :messages do |t|
      t.rename :id, :m_id
    end

    change_table :message_channels do |t|
      t.rename :id, :mc_id
    end

    add_check_constraint :message_channel, "user1_id <> user2_id", name: "users_not_equal"
end

  def down
    change_table :messages do |t|
      t.rename :m_id, :id
    end

    change_table :message_channels do |t|
      t.rename :mc_id, :id
    end

    remove_check_constraint :message_channel, name: "users_not_equal"
  end
end
