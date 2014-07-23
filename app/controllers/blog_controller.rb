class BlogController < ApplicateController 
  before_filter :authorize, only: [:new]
  def index
    @blog = Blog.order(updated_at: :desc).limit(25)
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def new
    @blog = Blog.new
  end
  
  def create
      @blog = Blog.new(article_params)
    if @blog.save
      redirect_to @blog
    else
      render "new"
    end
  end

 private
  def blog_params
    params.require(:blog).permit(:title, :content, :category_ids => [])
  end
end