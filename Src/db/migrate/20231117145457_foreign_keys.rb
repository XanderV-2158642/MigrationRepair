class ForeignKeys < ActiveRecord::Migration[7.1]
  def change
    #Forum
    add_foreign_key :forums, :users, column: :poster_id

    add_foreign_key :forum_posts, :forum_post_tags, column: :tag1_id
    add_foreign_key :forum_posts, :forum_post_tags, column: :tag2_id
    add_foreign_key :forum_posts, :forum_post_tags, column: :tag3_id


    #orders
    add_foreign_key :order_cages, :orders
    add_foreign_key :order_bottles, :orders
    add_foreign_key :order_extras, :orders

    add_foreign_key :orders, :users
    add_foreign_key :orders, :rooms

    add_foreign_key :order_bottles, :bottle_types
    add_foreign_key :order_cages, :cage_types
    add_foreign_key :order_others, :others


    #rooms
    add_foreign_key :room_checks, :rooms
    add_reference :room_checks, :users
    add_foreign_key :room_checks, :room_columns

    add_foreign_key :room_selected_columns, :room_columns
    add_foreign_key :room_selected_columns, :rooms
  end
end
