class HomeController < ApplicationController
  #before_action :authenticate_user!
  def index
    blogs
  end
  def blogs
    if user_signed_in? 
      @blogs = Blog.order(created_at: :desc)
    else 
      @blogs = Blog.order(created_at: :desc).limit(5)
      end
    end
end
 
 

#in the HomeController, index method, populate a variable @blogs based on a condition:
   #If user_signed_in?, then get all the blog posts and assign the list to @blogs
   #If not user_signed_in?, get the most recent 5 posts and assign the list to @blogs