require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post'/piglatinize' do
    words = params[:user_phrase]
    @piglatinized_text = PigLatinizer.new.piglatinize(words)
    
    erb :results
  end
end