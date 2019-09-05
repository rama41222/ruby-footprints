Rails.application.routes.draw do
  root 'welcome#home' # defines the root route
  get 'welcome/home' => 'welcome#home'
  get 'welcome/about' => 'welcome#about'
end
