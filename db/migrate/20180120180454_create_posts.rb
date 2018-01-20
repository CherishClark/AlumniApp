class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :ranking
      t.string :topic
      t.text :comment
      t.text :images

      t.timestamps
    end
  end
end
