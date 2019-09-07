Rails.application.routes.draw do
  root 'article#home' # defines the root route
  get 'article/home' => 'article#home'
  get 'article/about' => 'article#about'
end
