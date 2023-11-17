class CreateOrderCages < ActiveRecord::Migration[7.1]
  def change
    create_table :order_cages do |t|
      t.bigint :order_id
      t.bigint :cage_type_id
      t.integer :amount

      t.timestamps
    end
  end
end
