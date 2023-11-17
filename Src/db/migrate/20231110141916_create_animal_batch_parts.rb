class CreateAnimalBatchParts < ActiveRecord::Migration[7.1]
  def change
    create_table :animal_batch_parts do |t|
      t.string :birthdate
      t.string :sacrifice_date
      t.integer :tissue
      t.integer :amount
      t.integer :ab_id
      t.integer :room_nr
      t.boolean :available

      t.column :gender, "ENUM('Male', 'Female', 'Mixed')"
      t.column :ggo, "ENUM('Yes', 'No', 'Mixed')"
      t.column :specie, "ENUM('Rat', 'Mouse', 'Mixed')"
      t.column :state, "ENUM('Alive', 'Dead', 'Mixed')"

      t.timestamps
    end
  end
end
