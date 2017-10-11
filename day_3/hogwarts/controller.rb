require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/student')
require_relative('./models/house')


get '/' do # index
  @students = Student.all()
  erb ( :index )
end

get '/new' do
  erb ( :new )
end

post '/new' do
  @student = Student.new(params)
  @student.save()
  erb ( :added )
end
