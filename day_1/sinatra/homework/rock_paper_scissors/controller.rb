require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/game' )

get '/rock/scissors/:num1' do
  game = Game.new( params[:num1].to_i )
  @outcome = game.winner(game.round())
  erb( :outcome )

end


get '/home' do
  erb (:home)
end
