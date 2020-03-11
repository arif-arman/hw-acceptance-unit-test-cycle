Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movies/:id/filter_by_director' => 'movies#filter_by_director', :as => :filter_by_director
end
