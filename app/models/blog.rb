class Blog < ActiveRecord::Base
end
belongs_to :user
has_many :blog_categories
has_many :categories, through: :blog_categories
validates :title, presence: true
validates :content, presence: true
validates :categories, presence: true