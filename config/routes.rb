Rails.application.routes.draw do
    resources :users, only: [:index, :create] do
        
        collection do
            post 'confirm'
            post 'login'
        end
    end
    
    resources :posts, only: [:index]


end
