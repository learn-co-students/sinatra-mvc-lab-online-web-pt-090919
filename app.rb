require_relative 'config/environment'

class App < Sinatra::Base
   get '/' do
    erb :user_input.erb
  end
  
  post '/' do
  @analyzed_text = TextAnalyzer.new(params[:user_input])
 
  erb :results
end
end