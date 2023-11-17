class CreateRoomChecks < ActiveRecord::Migration[7.1]
  def change
    create_table :room_checks do |t|
      t.boolean :state
      t.bigint :room_id
      t.bigint :room_column_id
      t.bigint :user_id

      t.timestamps
    end
  end
end
