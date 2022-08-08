class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :user_id
      t.string :post_id

      t.timestamps
    end
  end
end
