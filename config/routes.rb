Rails.application.routes.draw do
  get '/blog_pages' => 'blog_page#index'
  get '/blog_page/:id' => 'blog_page#show'
end
