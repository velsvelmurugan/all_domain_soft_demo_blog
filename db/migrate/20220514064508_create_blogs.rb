class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :author_type
      t.text :blog_body

      t.timestamps
    end
  end
end
