RailsElfinderCkeditor::Application.routes.draw do
  # get "fm/index"
  root :to => 'fm#index'
  match 'elfinder' => "fm#elfinder"
  
end
