Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'favors#index', as: 'home'


  get 'ques' => 'favors#ques', as: 'ques'

  get 'gmap' => 'favors#gmap', as: 'gmap'

  get 'new' => 'requests#new', as: 'new'

  resources :requests

end
