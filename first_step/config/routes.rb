Rails.application.routes.draw do
  get 'welcome/home' => 'welcome#home'
  get 'welcome/about' => 'welcome#about'
end
