class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :text
      t.string :title

      t.timestamps
    end
  end
end
