Rails.application.routes.draw do
  get '/blog_pages' => 'blog_page#index'
  get '/blog_pages/:id' => 'blog_page#show'
end
