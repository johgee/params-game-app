Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/query_params" => "params_examples#query_params"
  get "/enter_name" => "params_examples#enter_name"
  get "/number_game" => "params_examples#number_game"
  get "/url_segment_params/:title" => "params_examples#url_segment"
end
