class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :mc_id
      t.string :message
      t.integer :sender_id
      t.integer :receiver_id
      t.datetime :timestamp
    end
  end
end
