Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/query_params" => "params_examples#query_params"
  get "/name", controller: "params_examples", action: "name_game"
  get "/number_game" => "params_examples#number_game"
  get "/url_segment_params/:title" => "params_examples#url_segment"
end
