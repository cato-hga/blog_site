class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :date
      t.string :slug
      t.string :image

      t.timestamps
    end
  end
end
