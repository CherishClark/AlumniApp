class RemoveCommentFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :comment, :text
  end
end
