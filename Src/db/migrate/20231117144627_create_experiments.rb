class CreateExperiments < ActiveRecord::Migration[7.1]
  def change
    create_table :experiments do |t|

      t.integer :user_id
      t.string :title
      t.string :description
      t.string :start_date
      t.string :end_date
      t.string :birthdate
      t.string :sacrifice_date
      t.integer :room_nr
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
