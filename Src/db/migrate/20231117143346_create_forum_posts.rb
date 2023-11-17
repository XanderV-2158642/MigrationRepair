class CreateForumPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :forum_posts do |t|
      t.integer :poster_id
      t.string "post_title", limit: 128
      t.text "post_text"
      t.boolean "is_edited"
      t.boolean "is_deleted"
      t.integer "am_answers"
      t.integer "replied_to"
      t.bigint "tag1_id"
      t.bigint "tag2_id"
      t.bigint "tag3_id"
      t.boolean "is_closed"

      t.timestamps
    end
  end
end
