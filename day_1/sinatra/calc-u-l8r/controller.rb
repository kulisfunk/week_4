require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require( 'json' )
require_relative( './models/calculator' )

  get '/add/:num1/:num2' do
    calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
    @calculation = calculator.add()
    erb( :result )

  end

  get '/subtract/:num1/:num2' do
    calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
    @calculation = calculator.subtract()
    erb( :result)

  end

  get '/multiply/:num1/:num2' do
    calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
    @calculation = calculator.multiply
    erb( :result)

  end

  get '/divide/:num1/:num2' do
    calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
    @calculation = calculator.divide
    erb( :result)

  end

  get '/all/:num1/:num2' do
  content_type( :json )

  calculator = Calculator.new( params[:num1].to_f, params[:num2].to_f )
  results = {
    add: calculator.add(),
    subtract: calculator.subtract(),
    multiply: calculator.multiply(),
    divide: calculator.divide()
  }

  return results.to_json
  end

  get '/' do
    erb (:home)
  end

  get '/about_us' do
    erb (:about_us)
  end

  get '/guess_what' do
    erb (:guess_what)
  end
