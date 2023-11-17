class CreateOthers < ActiveRecord::Migration[7.1]
  def change
    create_table :others do |t|
      t.string :o_type

      t.timestamps
    end
  end
end
