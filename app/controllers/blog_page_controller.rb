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
end
