class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.bigint :room_id
      t.bigint :user_id
      t.date :delivery_date
      t.text :request
      t.boolean :frozen
      
      t.timestamps
    end
  end
end
