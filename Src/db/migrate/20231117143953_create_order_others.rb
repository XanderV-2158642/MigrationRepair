class CreateOrderOthers < ActiveRecord::Migration[7.1]
  def change
    create_table :order_others do |t|
      t.bigint :order_id
      t.bigint :other_type_id
      t.integer :amount

      t.timestamps
    end
  end
end
