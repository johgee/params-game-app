class ParamsExamplesController < ApplicationController
  def query_params 
    input_name = params["name"]
    render json: {message: "your name is #{input_name}", message2: "your number is #{params['x']}"}
  end

  def name_game
    user_given_name = params["my_name"].upcase

    if user_given_name.starts_with?("A")
      output_message = "hey your name starts with the first letter of the alphabet"
    else 
      output_message = "cool beans"
    end 

    render json: {message: "your name is #{user_given_name} #{output_message}"}
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
