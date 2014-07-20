class Category < ActiveRecord::Base
  has_many :blog_categories
	has_many :blog, through: :blog_categories
  validates_uniqueness_of :name
end
