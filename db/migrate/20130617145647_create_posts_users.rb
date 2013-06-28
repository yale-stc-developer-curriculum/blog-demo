class CreatePostsUsers < ActiveRecord::Migration
  def change
    create_table :posts_users do |t|
      t.references :post, index: true
      t.references :user, index: true
    end
  end
end
