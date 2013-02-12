R20130211StockMovie::Application.routes.draw do

  root :to => 'home#index'

  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  get '/movie' => 'movie#index'
  get '/movie/:title' => 'movie#index'
  post '/search_movie' => 'movie#search_movie'

  get '/stock' => 'stock#index'
  get '/stock/:symbol' => 'stock#index'
  post '/search_stock' => 'stock#search_stock'

end
