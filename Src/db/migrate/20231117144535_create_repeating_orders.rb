class CreateRepeatingOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :repeating_orders do |t|
      t.date :end_date
      t.bigint :order_id
      t.string :frequency
      t.date :start_date
    end
  end
end
