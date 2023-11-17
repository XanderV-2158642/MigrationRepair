class CreateFinders < ActiveRecord::Migration[7.1]
  def change
    create_table :finders do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :birthdate
      t.integer :tissue
      t.integer :amount

      t.column :gender, "ENUM('Male', 'Female', 'Mixed')"
      t.column :ggo, "ENUM('Yes', 'No', 'Mixed')"
      t.column :specie, "ENUM('Rat', 'Mouse', 'Mixed')"
      t.column :state, "ENUM('Alive', 'Dead', 'Mixed')"

      t.timestamps
    end
  end
end
