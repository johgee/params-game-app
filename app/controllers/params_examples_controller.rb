class ParamsExamplesController < ApplicationController
  def query_params 
    input_name = params["name"]
    render json: {message: "your name is #{input_name}", message2: "your number is #{params['x']}"}
  end

  def enter_name
    enter_name = params["a"]
    render json: {message: "your name starts with the first letter of the alphabet!"}
  end

  def number_game
    user_number = params["user_number"].to_i
    winning_number = 19
    if user_number < winning_number
      output = "guess higher"
    elsif user_number > winning_number 
      output = "guess lower"
    else 
      output = "you win!"
    end 
    render json: {user_number: output}
  end 

  def url_segment
    input_value = params["title"]
    render json: {message: "the url is #{input_value}"}
  end 
end
