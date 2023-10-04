class CreateBlogPages < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_pages do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
