class CreateForumPostTags < ActiveRecord::Migration[7.1]
  def change
    create_table :forum_post_tags do |t|
      t.string :name
    end
  end
end
