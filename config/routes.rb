#Félix Carle-Milette 2020-11-03
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'accueil#presentation'

  get '/recettes/1', to: 'recettes#index_1'
  get '/recettes/2', to: 'recettes#index_2'
  get '/recettes/3', to: 'recettes#index_3'
  get '/recettes/4', to: 'recettes#index_4'

  namespace :admin do
    get '/:is_admin', to: 'admin#admin'
    get '/recettes/:is_admin', to: 'admin#recettes'
    get '/recettes/1/:is_admin', to: 'admin#index_1'
    get '/recettes/2/:is_admin', to: 'admin#index_2'
    get '/recettes/3/:is_admin', to: 'admin#index_3'
    get '/recettes/4/:is_admin', to: 'admin#index_4'
  end
  
end
