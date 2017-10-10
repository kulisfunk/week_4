require 'sinatra'
require 'sinatra/contrib/all' if development? #ADDED

get '/hi' do
  "Hello World! It's me"
end

get "/Roll Die" do
  "Dice is now rolling #{rand(1..6)}"
end

# capture parameters from the path
get '/name/:first/:last' do
  return "Your name is #{params[:first]} #{params[:last]}"
end

get '/friends/:number' do
  friends = ["Joey", "Phoebe", "Monica", "Chandler", "Rachel", "Ross"]
  index = params["number"].to_i - 1
  return friends[index]
end

get "/square/:num" do
  num = params[:num].to_i
  return "Number squared = #{num * num}"
end

get "/pet/:hello" do #these two have identical routes
	"Hello pet"
end

get "/pet/:name" do # this route will never be triggered
	"Hello #{params[:name]}"
end
