class CreateGuideLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :guide_links do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
