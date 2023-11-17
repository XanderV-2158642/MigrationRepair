class CreateCertificates < ActiveRecord::Migration[7.1]
  def change
    create_table :certificates do |t|
      t.integer :user_id
      t.string :file_name

      t.timestamps
    end
  end
end
