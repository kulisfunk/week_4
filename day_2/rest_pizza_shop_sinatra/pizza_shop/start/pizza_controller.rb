require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/pizza')


get '/pizzas' do # index
  @pizzas = Pizza.all()
  erb ( :index )
end

get '/pizzas/new' do # new
  erb( :new )
end

get '/pizzas/:id' do # show
  @pizza = Pizza.find( params[:id] )
  erb( :show )
end

post '/pizzas' do # create
  @pizza = Pizza.new( params )
  @pizza.save()
  erb( :create )
end
