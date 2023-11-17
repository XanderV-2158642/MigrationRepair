class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.integer :owner_id
      t.string :title
      t.string :description
      t.integer :ab_id

      t.timestamps
    end
  end
end
