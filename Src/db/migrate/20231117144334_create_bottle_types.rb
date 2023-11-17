class CreateBottleTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :bottle_types do |t|
      t.string :b_type
      
      t.timestamps
    end
  end
end
