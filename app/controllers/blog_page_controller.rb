class BlogPageController < ApplicationController
    def index
        @blog_pages = BlogPage.all
    end
    def show
        @blog_page = BlogPage.find(params[:id])
    end
    def new
        @blog_page = BlogPage.new
    end

    def create
        @blog_page = BlogPage.create(blog_page_params)
        
        if @blog_page.valid?
          redirect_to blog_page_path(@blog_page)#, notice: 'Blog page was successfully created.'
        #else
                
         # render 'new'
        end
      end
      
      def edit
        @blog_page = BlogPage.find(params[:id])
      end
     
      def update
        @blog_page = BlogPage.find(params[:id])
    
        if @blog_page.update(blog_page_params)
          redirect_to blog_page_path(@blog_page), notice: 'Blog page was successfully updated.'
        else
         render 'edit'
        end
      end
    
      private
      
      def blog_page_params
        params.require(:blog_page).permit(:title, :content)
      end
      
end
