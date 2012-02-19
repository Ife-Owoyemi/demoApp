class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.string :comment
      t.integer :post_id
      t.integer :poster_id

      t.timestamps
    end
  end
end
