R20130211Basics::Application.routes.draw do

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#homepage'

  get '/home' => 'home#homepage'
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  get '/dogs' => 'dogs#dogs'
  get '/dogs/new' => 'dogs#new'
  get '/dogs/faq' => 'dogs#faq'
  get '/dogs/faq2' => 'dogs#faq2'

  get '/auto/:color' => 'auto#color'
  get '/auto/:hp/:torque' => 'auto#engine'

  get '/calc/:x/:y/:operator' => 'calc#calculate'

  get '/funny' => 'funny#lol'

end
