require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end 

  get "/multiply/:num1/:num2" do 
    array = []
    params.each do |key, value|
      array << value
      # binding.pry
    end
    # binding.pry
    @product = array[0].to_i * array[1].to_i
    "#{@product}"
  end
end