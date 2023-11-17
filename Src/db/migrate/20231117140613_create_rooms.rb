class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
