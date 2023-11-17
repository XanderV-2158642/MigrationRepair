class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.integer :user_type
      t.boolean :admin
      t.boolean :is_deleted
      t.text :info
      t.integer :notif_level
      t.string :password_digest
      t.string :name

      t.timestamps
    end
  end
end
