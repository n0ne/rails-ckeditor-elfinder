RailsElfinderCkeditor::Application.routes.draw do
  get "editor/index"



  # get "fm/index"
  root :to => 'fm#index'
  get "fm/index"
  match 'elfinder' => "fm#elfinder"
  
end
