class CreateBlogCategories < ActiveRecord::Migration
  def change
    create_table :blog_categories do |t|
      t.belongs_to :blog
    	t.belongs_to :category
     t.timestamps
    end
  end
end
