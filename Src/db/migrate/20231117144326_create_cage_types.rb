class CreateCageTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :cage_types do |t|
      t.string :c_type
      
      t.timestamps
    end
  end
end
