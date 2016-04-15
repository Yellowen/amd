AMD::Engine.routes.draw do
  get '/amd/:asset', to: 'assets#finder'
end
