class ParamsExamplesController < ApplicationController
  def query_params 
    input_name = params["name"]
    render json: {message: "your name is #{input_name}", message2: "your number is #{params['x']}"}
  end
end
