Rails.application.routes.draw do
  get '/blog_pages' => 'blog_page#index', as: "blog_pages"
  get '/blog_pages/new' => 'blog_page#new', as: "new_blog_page"
  get '/blog_page/:id' => 'blog_page#show'
end
