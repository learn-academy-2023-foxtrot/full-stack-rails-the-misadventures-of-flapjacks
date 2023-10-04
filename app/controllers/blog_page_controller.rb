class BlogPageController < ApplicationController
    def index
        @blog_pages = BlogPage.all
    end
    def show
        @blog_page = BlogPage.find(params[:id])
    end
end
