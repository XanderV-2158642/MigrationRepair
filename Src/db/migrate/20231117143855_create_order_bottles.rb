class CreateOrderBottles < ActiveRecord::Migration[7.1]
  def change
    create_table :order_bottles do |t|
      t.bigint :order_id
      t.bigint :bottle_type_id
      t.integer :amount

      t.timestamps
    end
  end
end
