class CreateNurtureNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :nurture_notifications do |t|
      t.integer :notified_by
      t.string  :info
      t.integer :level
      t.boolean :is_deleted
      t.timestamps
    end
  end
end
