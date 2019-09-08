Rails.application.routes.draw do

  #page routes
  root 'article#index' # defines the root route
  get 'article/index' => 'article#index'
  get 'article/about' => 'article#about'
  get 'article/create' => 'article#create'
  get 'article/edit' => 'article#edit'
  get 'article/delete' => 'article#delete'

  scope '/store' , defaults: { format: :json } do
    namespace :v1 do
      resources :articles, only: [] do
        member do
          get :edit
        end
        collection do
          post :new
          patch :update
          delete :delete
        end
      end
    end
  end

end
