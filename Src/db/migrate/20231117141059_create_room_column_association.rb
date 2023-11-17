class CreateRoomColumnAssociation < ActiveRecord::Migration[7.1]
  def change
    create_table :room_selected_columns do |t|
      t.belongs_to :room_column
      t.belongs_to :room
      
      t.timestamps
    end
  end
end
