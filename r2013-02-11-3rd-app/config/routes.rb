R201302113rdApp::Application.routes.draw do

  root :to => 'home#index'

  get '/a' => 'home#a'
  get '/b' => 'home#b'

  get '/num' => 'home#num_page'
  get '/:page' => 'home#num_page2'


  get '/start' => 'home#index'


end
