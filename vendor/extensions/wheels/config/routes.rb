Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :wheels do
    resources :wheels, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :wheels, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :wheels, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
